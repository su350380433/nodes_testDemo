//
//  AttendanceRandomUtil.h
//  test
//
//  Created by suliangjin on 2018/6/6.
//  Copyright © 2018 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AttendanceRandomUtil : NSObject

//纬度的距离：一个纬度是111km，0.001度即是111m
+ (int)getRandomNumber:(int)from to:(int)to;

+ (float)roundFloat:(float)price scale:(int)scale;
    
@end
