//
//  main.m
//  runtimeTest
//
//

#import <Foundation/Foundation.h>
#import "objc-runtime.h"
#import "Person.h"
#import "Person+Fly.h"

// 把一个十进制的数转为二进制
NSString * binaryWithInteger(NSUInteger decInt){
    NSString *string = @"";
    NSUInteger x = decInt;
    while(x > 0){
        string = [[NSString stringWithFormat:@"%lu",x&1] stringByAppendingString:string];
        x = x >> 1;
    }
    return string;
}

int main(int argc, const char * argv[]) {
    // 整个程序都包含在一个@autoreleasepool中
    @autoreleasepool {
        // insert code here...
        NSObject *objc = [[NSObject alloc] init];
        __weak NSObject *objc1 = objc;
        NSLog(@"%@",objc1);
        NSLog(@"%@",objc1);
    }
    return 0;
}
