//
//  main.m
//  base_chapter02
//
//  Created by lunawye on 2022/4/27.
//

#import <Foundation/Foundation.h>

BOOL areIntsDifferent(int things1, int things2)
{
    if(things1 == things2)
    {
        return (NO);
    }
    else
    {
        return (YES);
    }
}

NSString *boolString(BOOL yesNo)
{
    if(yesNo == NO)
    {
        return (@"NO");
    }
    else
    {
        return (@"YES");
    }
}


int main(int argc, const char * argv[]) {
    NSLog(@"Hello,objective-c!");
    
    BOOL areTheyDifferent1;
    areTheyDifferent1 = areIntsDifferent(5, 5);
    NSLog(@"are %d and %d different? %@",5,5,boolString(areTheyDifferent1));
   
    BOOL areTheyDifferent2;
    areTheyDifferent2 = areIntsDifferent(23, 25);
    NSLog(@"are %d and %d different? %@",23,25,boolString(areTheyDifferent2));
    
    return 0;
    
}
