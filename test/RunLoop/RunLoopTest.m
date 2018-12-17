//
//  RunLoopTest.m
//  test
//
//  Created by suliangjin on 2018/9/30.
//  Copyright © 2018年 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "RunLoopTest.h"

@interface RunLoopTest()


@end

@implementation RunLoopTest


+ (void)runloopTest
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        while (1) {
            
            NSPort *macPort = [NSPort port];
            NSLog(@"while begin");
            NSRunLoop *subRunLoop = [NSRunLoop currentRunLoop];
            [subRunLoop addPort:macPort forMode:NSDefaultRunLoopMode];
            [subRunLoop runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
            NSLog(@"while end");
            NSLog(@"%@",subRunLoop);
            
        }
        
    });
    
//    作者：击水湘江
//    链接：https://www.jianshu.com/p/536184bfd163
//    來源：简书
//    简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。
}


/**
 这个时候我们发现这个while循环会一直在执行；这是为什么呢?我们先将这两个RunLoop分别打印出来:

 */
+ (void)runloopTest_2{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        while (1) {
            
            NSLog(@"while begin");
            NSRunLoop *subRunLoop = [NSRunLoop currentRunLoop];
            [subRunLoop runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
            NSLog(@"while end");
        }
        
    });
    
//    作者：击水湘江
//    链接：https://www.jianshu.com/p/536184bfd163
//    來源：简书
//    简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。
}
/**
 *
 */


+ (void)runloopTest_3
{
  
    while (1) {
        NSLog(@"while begin");
        // the thread be blocked here
        NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
        [runLoop runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
        // this will not be executed
        NSLog(@"while end");
        
    }
    
//    作者：击水湘江
//    链接：https://www.jianshu.com/p/536184bfd163
//    來源：简书
//    简书著作权归作者所有，任何形式的转载都请联系作者获得授权并注明出处。
}
@end
