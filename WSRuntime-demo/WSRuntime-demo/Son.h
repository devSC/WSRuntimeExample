//
//  Son.h
//  WSRuntime-demo
//
//  Created by YSC on 15/9/7.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import "Father.h"

@interface Son : Father
{
    NSString *_syString;
}

@property (nonatomic, copy) NSMutableArray *array;

@property (nonatomic, strong) NSString *syString;

- (void)printsyString;
@end
