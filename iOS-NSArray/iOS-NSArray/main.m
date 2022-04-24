//
//  main.m
//  iOS-NSArray
//
//  Created by lunawye on 2022/4/24.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        //普通创建
        NSArray *array=[[NSArray alloc] initWithObjects:@"one",@"two",@"three",nil];
        NSLog(@"test1:%@",array);
        
        //简化创建
        NSArray *array1=@[@"1",@"2",@"3",@"4"];
        NSLog(@"test2:%@",array1);
        
        //类方法创建
        NSNumber *number=@1.1;
        NSArray *array2=[NSArray arrayWithObjects:@"one",number,array,nil];
        NSLog(@"test3:%@",array2);
        
        //遇到nil自动停止
        NSNumber *number1=nil;
        NSArray *array3=[NSArray arrayWithObjects:@"one",number1,array,nil];
        NSLog(@"test4:%@",array3);
        
        //取数
        NSArray *subarray =[array objectAtIndex:2];
        NSLog(@"test5:%@",subarray);
        
        //取数2
        NSArray *subarray1 =array[1];
        NSLog(@"test6:%@",subarray1);
        
        //遍历
        for(NSInteger i=0;i<array.count;i++) NSLog(@"object:%@",array[i]);
        
        //快速枚举
        for(NSString *object in array) NSLog(@"%@",object);
        
        //枚举器
        NSEnumerator *enumerator=[array objectEnumerator];
        id object=[enumerator nextObject];
        while(object){
          NSLog(@"object:%@",object);
          object=[enumerator nextObject];
        }
        
        //排序
        NSArray *resultArray=[array sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"%@",resultArray);
        
        //取头元素和尾元素
        NSLog(@"first object:%@",array.firstObject);
        NSLog(@"last object:%@",array.lastObject);
        
        //拼接
        NSString *string=@"I love you";
        NSArray *array4=[string componentsSeparatedByString:@" "];//字符串分割成数组
        NSLog(@"%@",array4);
        NSString *string1=[array4 componentsJoinedByString:@"-"];//数组拼接
        NSLog(@"%@",string1);

    }
    return 0;
}
