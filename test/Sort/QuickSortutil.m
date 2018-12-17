//
//  QuickSortutil.m
//  test
//
//  Created by suliangjin on 2018/6/1.
//  Copyright © 2018 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "QuickSortutil.h"
#import "NSMutableArray+Print.h"

@implementation QuickSortutil

- (void)testQuickSortAction
{
    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@(6), @(1),@(2),@(5),@(9),@(4),@(3),@(7),nil];
    
    NSLog(@"start = %@ ",[arr ioa_printArray]);
    
    [self quickSortArray:arr withLeftIndex:0 andRightIndex:arr.count - 1];
    
    NSLog(@"over = %@ ",[arr ioa_printArray]);
}

- (void)quickSortArray:(NSMutableArray *)array withLeftIndex:(NSInteger)leftIndex andRightIndex:(NSInteger)rightIndex
{
    
    NSLog(@"leftIndex = %ld  rightIndex = %ld 】 %@ ",leftIndex,rightIndex, [array ioa_printArray]);
    
    NSLog(@"==========================================================================/r/n");
    if (leftIndex >= rightIndex) {//如果数组长度为0或1时返回
        return ;
    }
    
    NSInteger i = leftIndex;
    NSInteger j = rightIndex;
    //记录比较基准数
    NSInteger key = [array[i] integerValue];
    
    while (i < j) {
        /**** 首先从右边j开始查找比基准数小的值 ***/
        while (i < j && [array[j] integerValue] >= key) {//如果比基准数大，继续查找
            j--;
        }
        //如果比基准数小，则将查找到的小值调换到i的位置
        array[i] = array[j];
        
        NSLog(@"【a】【i =%ld  j = %ld  array[j] = %ld】 %@ ",i,j,[array[j] integerValue], [array ioa_printArray]);
        
        /**** 当在右边查找到一个比基准数小的值时，就从i开始往后找比基准数大的值 ***/
        while (i < j && [array[i] integerValue] <= key) {//如果比基准数小，继续查找
            i++;
        }
        //如果比基准数大，则将查找到的大值调换到j的位置
        array[j] = array[i];
        
        NSLog(@"【b】【i =%ld  j = %ld array[i] = %ld】 %@ ",i,j,[array[i] integerValue], [array ioa_printArray]);
        
        
    }
    
    //将基准数放到正确位置
    array[i] = @(key);
    
    
    NSLog(@"end【left =%ld  right = %ld 】 %@ ",leftIndex,rightIndex, [array ioa_printArray]);
    
    /**** 递归排序 ***/
    //排序基准数左边的
    [self quickSortArray:array withLeftIndex:leftIndex andRightIndex:i - 1];
    //排序基准数右边的
    [self quickSortArray:array withLeftIndex:i + 1 andRightIndex:rightIndex];
}


@end
