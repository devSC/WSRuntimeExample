//
//  UserModel.m
//  WSRuntime-demo
//
//  Created by YSC on 15/9/8.
//  Copyright (c) 2015年 wilson-yuan. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel
{
    NSMutableSet *_firends;
}

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age sex:(UserSexType)sex
{
    if (self = [super init]) {
        _name = name;
        _age = age;
        _sex = sex;
        _firends = [[NSMutableSet alloc] init];
    }
    return self;
}

+ (instancetype)userWithName:(NSString *)name age:(NSInteger)age sex:(UserSexType)sex
{
    return [[UserModel alloc] initWithName:name age:age sex:sex];
}

- (void)addFirend: (UserModel *)user
{
    [_firends addObject:user];
}
- (id)copyWithZone:(NSZone *)zone
{
    UserModel *user = [[[self class] allocWithZone:zone] initWithName:_name age:_age sex:_sex];
//    copy -> _firends = [_firends mutableCopy];
    return user;
}
@end
