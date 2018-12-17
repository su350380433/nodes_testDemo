//
//  SortUtil.m
//  test
//
//  Created by suliangjin on 2018/6/1.
//  Copyright © 2018 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "SortUtil.h"
#import "NSMutableArray+Print.h"
@implementation SortUtil

- (void)filterAaary
{
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:
                           @(6), @(1),@(2),@(5),@(9),
                           @(6), @(1),@(2),@(5),@(9),
                           @(6), @(1),@(2),@(5),@(9),
                           @(6), @(1),@(2),@(5),@(9),nil];
    

    for (NSInteger leftIndex = 0; leftIndex < arr.count; leftIndex++) {
        NSInteger rightIndex = arr.count - 1;
        while (leftIndex < rightIndex   ) {
            if (arr[leftIndex] == arr[rightIndex]) {
                [arr removeObjectAtIndex:rightIndex];
            }
            rightIndex --;
        }
    }
    NSLog(@"%@",[arr ioa_printArray]);
}
@end
