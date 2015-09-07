//
//  UIView+List.m
//  WSRuntime-demo
//
//  Created by YSC on 15/9/7.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import "UIView+List.h"
#import <objc/runtime.h>


@implementation UIView (List)

+ (void)printIvalist
{

    u_int count;
    Ivar *ivarList = class_copyIvarList([UIView class], &count);
    for (int i = 0; i < count; i++) {
        const char *ivarName = ivar_getName(ivarList[i]);
        NSString *strName = [NSString stringWithCString:ivarName encoding:NSUTF8StringEncoding];
        NSLog(@"ivar: %@", strName);
    }
    
}



+ (void)printPropertyList
{
    u_int count;
    objc_property_t *properties = class_copyPropertyList([UIView class], &count);
    for (int i = 0; i < count; i++) {
        const char *propertyName = property_getName(properties[i]);
        NSString *strName = [NSString stringWithCString:propertyName encoding:NSUTF8StringEncoding];
        NSLog(@"property: %@", strName);
    }
}

+ (void)printMethodList
{

    u_int count;
    Method *method = class_copyMethodList([UIView class], &count);
    for (int i = 0; i < count; i ++) {
        SEL methodName = method_getName(method[i]);
        NSString *strName = [NSString stringWithCString:sel_getName(methodName) encoding:NSUTF8StringEncoding];
        NSLog(@"method: %@", strName);
    }
}

@end
