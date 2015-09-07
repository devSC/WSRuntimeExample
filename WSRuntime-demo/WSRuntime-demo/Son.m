//
//  Son.m
//  WSRuntime-demo
//
//  Created by YSC on 15/9/7.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import "Son.h"

#import <objc/runtime.h>

@implementation Son

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%@", NSStringFromClass([self class]));
        NSLog(@"%@", NSStringFromClass([super class]));
        
        
        
//        BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
//
//        
//        BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
//        
//        BOOL res3 = [(id)[self class] isKindOfClass:[Son class]];
//        BOOL res4 = [(id)[Son class] isMemberOfClass:[Son class]];
//        
//        NSLog(@"%d %d %d %d", res1, res2, res3, res4);

        
    }
    return self;
}

@end
