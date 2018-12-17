//
//  ChainTest.m
//  test
//
//  Created by suliangjin on 2018/12/16.
//  Copyright © 2018年 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "ChainTest.h"

@implementation ChainTest

- (void)chainTest
{
    self.where.name;
}

- (NSString *)name{
    NSLog(@"我的name");
    return @"1232";
}

- (ChainTest *)where
{
    NSLog(@"where");
    return self;
}
@end
