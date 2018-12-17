//
//  MergeSortUtil.m
//  test
//
//  Created by suliangjin on 2018/5/31.
//  Copyright © 2018 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "MergeSortUtil.h"
#import "NSMutableArray+Print.h"

@implementation MergeSortUtil

- (void)testMergeAction
{
    NSMutableArray * array = [NSMutableArray arrayWithObjects:@(6), @(1),@(2),@(5),@(9),@(4),@(3),@(7), nil];
//    NSMutableArray * array = [NSMutableArray arrayWithObjects:@8,@7,@6,@5,@4,@3,@2,@1, nil];

    //调用排序
    //创建一个副本数组
    NSMutableArray * auxiliaryArray = [[NSMutableArray alloc]initWithCapacity:array.count];
    
    //对数组进行第一次二分，初始范围为0到array.count-1
    [self mergeSort:array auxiliary:auxiliaryArray low:0 high:array.count-1];
    
}


- (void)mergeSort:(NSMutableArray *)array auxiliary:(NSMutableArray *)auxiliaryArray low:(int)low high:(int)high {
    //递归跳出判断
    if (low>=high) {
        return;
    }
    //对分组进行二分
    int middle = (high - low)/2 + low;
    
    //对左侧的分组进行递归二分 low为第一个元素索引，middle为最后一个元素索引
    [self mergeSort:array auxiliary:auxiliaryArray low:low high:middle];
    
    //对右侧的分组进行递归二分 middle+1为第一个元素的索引，high为最后一个元素的索引
    [self mergeSort:array auxiliary:auxiliaryArray low:middle + 1 high:high];
    
    //对每个有序数组进行回归合并
    [self merge:array auxiliary:auxiliaryArray low:low middel:middle high:high];
}
- (void)merge:(NSMutableArray *)array auxiliary:(NSMutableArray *)auxiliaryArray low:(int)low middel:(int)middle high:(int)high {
    //将数组元素复制到副本
    for (int i=low; i<=high; i++) {
        auxiliaryArray[i] = array[i];
    }
    
    NSLog(@"low = m middel = m high = m 【%@】",[auxiliaryArray ioa_printArray]);

    //左侧数组标记
    int leftIndex = low;
    //右侧数组标记
    int rightIndex = middle + 1;
    
    //比较完成后比较小的元素要放的位置标记
    int currentIndex = low;
    
    while (leftIndex <= middle && rightIndex <= high) {
        //此处是使用NSNumber进行的比较，你也可以转成NSInteger再比较
        if ([auxiliaryArray[leftIndex] compare:auxiliaryArray[rightIndex]]!=NSOrderedDescending) {
            //左侧标记的元素小于等于右侧标记的元素
            array[currentIndex] = auxiliaryArray[leftIndex];
            currentIndex++;
            leftIndex++;
        }else{
            //右侧标记的元素小于左侧标记的元素
            array[currentIndex] = auxiliaryArray[rightIndex];
            currentIndex++;
            rightIndex++;
        }
    }
    //如果完成后左侧数组有剩余
    if (leftIndex <= middle) {
        for (int i = 0; i<=middle - leftIndex; i++) {
            array[currentIndex +i] = auxiliaryArray[leftIndex +i ];
        }
    }
    //为什么右边不需要呢？
//    因为右边的值比左边的小，就按照原来是顺序排列就可以了，无需调换位置
    NSLog(@"low = %d middel = %d high = %d 【%@】",low,middle,high,[array ioa_printArray]);
    
}


@end
