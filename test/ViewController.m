//
//  ViewController.m
//  test
//
//  Created by suliangjin on 2018/5/23.
//  Copyright © 2018年 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "ViewController.h"
#import "MergeSortUtil.h"
#import "NSMutableArray+Print.h"
#import "QuickSortutil.h"
#import "AttendanceRandomUtil.h"
#import "TestPushVCViewController.h"
#import "test1.h"
#import "RunLoopTest.h"
#import "FatherObject.h"
#import "isaTest.h"
#import "BlockTest.h"
#import "TggedPointer.h"
#import "ChainTest.h"

@interface Spark : NSObject

@property(nonatomic,copy) NSString *name;

@end

@implementation Spark

- (void)speak {
    NSLog(@"My name is:%@",self.name);
}

@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#pragma mark - runtime 栈，地址分配
//    id cls = [Spark class];
//
//    void *obj = &cls;
//    [(__bridge id)obj speak];
//
#pragma mark

//    self.view.backgroundColor = [UIColor whiteColor];
//    NSLog(@"1");
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"2");
//        dispatch_sync(dispatch_get_main_queue(), ^{
//            NSLog(@"3");
//        });
//        NSLog(@"4");
//    });
//    NSLog(@"5");
//
//    NSLog(@"1");
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"2");
//        dispatch_sync(dispatch_get_global_queue(0, 0), ^{
//            NSLog(@"3");
//        });
//        NSLog(@"4");
//    });
//    NSLog(@"5");

    

//    NSLog(@"1");
//
////    dispatch_async(dispatch_get_global_queue(0, 0), ^{
////        NSLog(@"2");
////    });
//
//        dispatch_async(dispatch_get_main_queue(), ^{
//            NSLog(@"2");
//        });
//    dispatch_main();
//    NSLog(@"3");
    
//    NSMutableArray *arr = [[NSMutableArray alloc] initWithObjects:@(6), @(1),@(2),@(5),@(9),@(4),@(3),@(7),nil];
//
//    NSLog(@"start = %@ ",[arr ioa_printArray]);
//
//    [self quickSortArray:arr withLeftIndex:0 andRightIndex:arr.count - 1];
//
//    NSLog(@"over = %@ ",[arr ioa_printArray]);
    
    
   
//    [[QuickSortutil new] testQuickSortAction];
//    [[MergeSortUtil new] testMergeAction];
    
//    NSArray *array = [[NSArray alloc]initWithObjects:@"a",@"b",@"c",@"d",@"e",@"f", nil];
//
//    //遍历数组元素
//    [array enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"obj=%@   idx=%ld",obj,idx);
//    }];
//
//    //NSEnumerationReverse 倒序排列
//    [array enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        NSLog(@"idx=%ld, id=%@", idx, obj);
//
//        //当需要结束循环的时候,调用stop,赋予YES
//        if (idx ==3) {
//            *stop = YES;
//        }
//
//    }];
    


//    TestPushVCViewController *vc = [[TestPushVCViewController alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
//
//    [self presentViewController:nav animated:YES completion:nil];
//    dispatch_group_t group =dispatch_group_create();
////    dispatch_queue_t globalQueue=dispatch_get_global_queue(0, 0);
//    dispatch_queue_t globalQueue= dispatch_get_main_queu();
//
//
//    dispatch_group_enter(group);
//
//    //模拟多线程耗时操作
//    dispatch_group_async(group, globalQueue, ^{
//        sleep(3);
//        NSLog(@"%@---block1结束。。。",[NSThread currentThread]);
//        dispatch_group_leave(group);
//    });
//    NSLog(@"%@---1结束。。。",[NSThread currentThread]);
//
//    dispatch_group_enter(group);
//    //模拟多线程耗时操作
//    dispatch_group_async(group, globalQueue, ^{
//        sleep(3);
//        NSLog(@"%@---block2结束。。。",[NSThread currentThread]);
//        dispatch_group_leave(group);
//    });
//    NSLog(@"%@---2结束。。。",[NSThread currentThread]);
//
//    dispatch_group_notify(group, dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"%@---全部结束。。。",[NSThread currentThread]);
//    });
//
//    NSLog(@"%@---3结束。。。",[NSThread currentThread]);
//
//
   
//    NSLog(@"methodSync 开始");
//    __block NSInteger result = 0;
//    dispatch_group_t group = dispatch_group_create();
//    dispatch_group_enter(group);
//
//    [self methodAsync:^(NSInteger value) {
//        NSLog(@"methodSync 过程 result:%ld", (long)result);
//
//        result = value;
//        dispatch_group_leave(group);
//        NSLog(@"methodSync 过程2 result:%ld", (long)result);
//
//    }];
//    dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
//    NSLog(@"methodSync 结束 result:%ld", (long)result);
    
    
//   ============================= runLoop 测试 ==============================
//    [RunLoopTest runloopTest];
//    [RunLoopTest runloopTest_3];
    
    
    //   ============================= isa 测试 ==============================
//    [[isaTest new] isaTest];
    
    //   ============================= block  ==============================

//    BlockTest *test = [BlockTest new];
//    [test blockDemo3];

//    [TggedPointer test];
    
    //   ============================= 链式编程  ==============================

    [[ChainTest new] chainTest];
}
// 异步方法
- (void)methodAsync:(void(^)(NSInteger result))callBack {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"methodAsync 异步开始");
        sleep(2);
        NSLog(@"methodAsync 异步结束");
        if (callBack) {
            callBack(5);
        }
    });
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end



