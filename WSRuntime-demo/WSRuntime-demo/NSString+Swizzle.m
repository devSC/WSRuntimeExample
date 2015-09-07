//
//  NSString+Swizzle.m
//  WSRuntime-demo
//
//  Created by YSC on 15/9/7.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import "NSString+Swizzle.h"
#import "NSObject+Swizzle.h"
#import <objc/runtime.h>

@implementation NSString (Swizzle)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        [self swizzleClassMethod:@selector(resolveInstanceMethod:) withClassMethod:@selector(w_resolveInstanceMethod:)];
    });
}


+ (BOOL)w_resolveInstanceMethod: (SEL)sel
{
    if (![self w_resolveInstanceMethod:sel]) {
        
        NSString *selString = NSStringFromSelector(sel);
        if ([selString isEqualToString:@"count"] ||
            [selString isEqualToString:@"objectAtIndex:"] ||
            [selString isEqualToString:@"makeObjectsPerformSelector:withObject:"]) {

            class_addMethod(self, sel, (IMP)dynamicMethodIMP, "w@");
            return YES;
        } else {
            return NO;
        }
    }
    return NO;
}

void dynamicMethodIMP(id sekf, SEL _cmd)
{
    NSLog(@"dynamicMethodIMP");
}

@end
