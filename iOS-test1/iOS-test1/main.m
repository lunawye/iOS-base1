//
//  main.m
//  iOS-test1
//
//  Created by lunawye on 2022/4/21.
//

//#import <Foundation/Foundation.h>
////在 C 中使用 #include 来导入其他文件，在 OC 中使用 #import 来导入其他文件，不同点在于 #import 可以保证文件不被重复导入。
////#import <Foundation/Foundation.h> 的意思是告诉编译器查找 Foundation 框架中的 Foundation.h 文件。
////通过在主文件的头部使用 #import 来使用框架提供的功能。
//
//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        // insert code here...
//        NSLog(@"Hello, World!");
//        //NSLog 类似printf
//        //Foundation 均以NS开头，可以看到来自 Foundation 的 API 都具有 NS 前缀，这个前缀的意义是来自 NextSTEP
//        //@"字符串" 是 NSString 类型的字面量，这样的写法是为了与 C 字符串做区分。
//    }
//    return 0;
//}


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        int num=10;
        float pi=3.14f;
        BOOL flag=true;
        char myChar ='d';
        NSLog(@"%i",num);
        NSLog(@"%.2f",pi);
        NSLog(@"%d",flag);//布尔类型占位符为%d，值为1
        NSLog(@"%c",myChar);//字符类型
        
        int myNum=0;
        scanf("%i",&myNum); //输入
        NSLog(@"%i",myNum);
        
    }
    return 0;
}
