//
//  ViewController.m
//  WSRuntime-demo
//
//  Created by YSC on 15/9/7.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import "ViewController.h"
#import "UIView+List.h"

#import "NSString+Swizzle.h"

#import "Son.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*  Print List
         [UIView printIvalist];
    
    [UIView printPropertyList];
    
    [UIView printMethodList];
     */
    
//    NSString *test = @"test";
//    id haha = test;
//    [haha count];
//    [haha objectAtIndex:0];
    
    Son *son = [[Son alloc] init];
    
    
    BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
    
    
    BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
    
    BOOL res3 = [(id)son isKindOfClass:[Son class]];
    BOOL res4 = [(id)[Son class] isMemberOfClass:[Son class]];
    
    NSLog(@"%d %d %d %d", res1, res2, res3, res4);


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
