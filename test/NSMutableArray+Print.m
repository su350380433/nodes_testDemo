//
//  NSMutableArray+Print.m
//  test
//
//  Created by suliangjin on 2018/5/31.
//  Copyright © 2018 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "NSMutableArray+Print.h"

@implementation NSMutableArray(Print)


- (NSString *)ioa_printArray
{
    NSMutableString *printString = [[NSMutableString alloc] initWithCapacity:self.count];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [printString appendString:[(NSNumber *)obj stringValue]];
        [printString appendString:@"  ,"];
    }];
    [printString appendString:[NSString stringWithFormat:@"%p",self]];
    return printString;
}
@end
