//
//  TggedPointer.m
//  test
//
//  Created by suliangjin on 2018/12/5.
//  Copyright © 2018年 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "TggedPointer.h"

@implementation TggedPointer

+ (void)test{
    NSLog(@"%p",@(@(1).intValue));//0x127
    NSLog(@"%p",@(@(2).intValue));//0x227
//    由此可知int类型的tag为27，因为去掉27后0x1 = 1，0x2 = 2，正好是值。
    
    NSLog(@"%p",@(@(1).doubleValue));//0x157
    NSLog(@"%p",@(@(2).doubleValue));//0x257
    //    由此可知double类型的tag为57，因为去掉27后0x1 = 1，0x2 = 2，正好是值。

    
 
}
@end
