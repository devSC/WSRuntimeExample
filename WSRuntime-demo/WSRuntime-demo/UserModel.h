//
//  UserModel.h
//  WSRuntime-demo
//
//  Created by YSC on 15/9/8.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, UserSexType) {
    UserSexMan,
    UserSexWoma
};


@interface UserModel : NSObject<NSMutableCopying>


@property (nonatomic, readonly, copy) NSString *name;

@property (nonatomic, readonly, assign) NSInteger age;

@property (nonatomic, readonly, assign) UserSexType sex;


- (instancetype)initWithName: (NSString *)name age: (NSInteger)age sex: (UserSexType)sex;

+ (instancetype)userWithName: (NSString *)name age: (NSInteger)age sex: (UserSexType)sex;
- (void)login;


@end
