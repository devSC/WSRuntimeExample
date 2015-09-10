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

//@synthesize syString = _mysySting;
//@synthesize syString = _syString;

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"%@", NSStringFromClass([self class]));
        NSLog(@"%@", NSStringFromClass([super class]));
        
        self.syString = @"哈哈";
        
//        BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
//
//        
//        BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
//        
//        BOOL res3 = [(id)[self class] isKindOfClass:[Son class]];
//        BOOL res4 = [(id)[Son class] isMemberOfClass:[Son class]];
//        
//        NSLog(@"%d %d %d %d", res1, res2, res3, res4);
        
//        NSMutableArray *array = [NSMutableArray arrayWithObjects:@"1", @"2", nil];
//        self.array = array;
//        [self.array removeObjectAtIndex:0];

//        NSLog(@"self.syString: %@ mysyString: %@", self.syString, _mysySting);
        
//        NSString *immutableObject = nil;;
//        NSString *mutableObject = nil;
//        
//        [immutableObject copy]; //浅拷贝
//        [immutableObject mutableCopy]; //深拷贝
//        
//        
//        [mutableObject copy]; //深拷贝
//        [mutableObject mutableCopy]; //深拷贝
        NSMutableArray *array = [@[@"a", @"b"] mutableCopy];
        
    }
    return self;
}


- (NSString *)syString
{
    return _syString;
}

- (void)setSyString:(NSString *)syString
{
    _syString = [syString copy];
}

- (void)printsyString
{
    NSLog(@"syString: %p, %@",&_syString, self.syString);
    
}

@end
