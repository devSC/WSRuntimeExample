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
    [UIView printIvalist];
    
    [UIView printPropertyList];
    
    [UIView printMethodList];
    
//    NSString *test = @"test";
//    id haha = test;
//    [haha count];
//    [haha objectAtIndex:0];
    
    Son *son = [[Son alloc] init];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
