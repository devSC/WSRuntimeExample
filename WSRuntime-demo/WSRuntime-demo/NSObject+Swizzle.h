//
//  NSObject+Swizzle.h
//  WSRuntime-demo
//
//  Created by YSC on 15/9/7.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizzle)


+ (BOOL)swizzleClassMethod: (SEL)oriSel withClassMethod: (SEL)nSel;

+ (BOOL)swizzleMethod: (SEL)origSel withMethod: (SEL)nMethod;



@end
