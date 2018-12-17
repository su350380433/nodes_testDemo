//
//  SonObject.h
//  test
//
//  Created by suliangjin on 2018/11/28.
//  Copyright © 2018年 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "FatherObject.h"

@interface SonObject : FatherObject

@property (nonatomic, assign) NSInteger age;

- (void)getDisplayAge;
@end
