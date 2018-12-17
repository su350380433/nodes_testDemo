//
//  BlockTest.m
//  test
//
//  Created by suliangjin on 2018/12/2.
//  Copyright © 2018年 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "BlockTest.h"
#import <objc/runtime.h>

typedef void(^Sayhello)(void);

@interface BlockTest()

@property (copy, nonatomic) Sayhello sayBlock;

@property (copy, nonatomic) NSMutableString *obj;

@end

@implementation BlockTest

//struct __Block_byref_obj_0 {
//    void *__isa;
//    __Block_byref_i_0 *__forwarding;
//    int __flags;
//    int __size;
//    NSMutableString *obj;
//};
-(void)block_print2
{
    NSMutableString *obj = [[NSMutableString alloc] initWithString:@"123"];//存储在栈区
    NSLog(@"obj = %p  &obj = %@ retain  count = %ld\n", obj, obj,CFGetRetainCount((__bridge  CFTypeRef)(obj)));

    int i = 0;
    Sayhello sayBlock  = ^(){
//        obj 存储在堆去obj.forward->obj。这里的obj在block里面实际上已经是另外一个变量的别名了，与block的obj不是同一个地址指向
//        obj.forward->obj
        [obj appendString:  @"456"];
        NSLog(@"obj = %p  &obj = %@ retain  count = %ld\n", obj, obj,CFGetRetainCount((__bridge  CFTypeRef)(obj)));

    };
#warning MRC 下是  __NSStackBlock__    ARC下是__NSMallocBlock__
    NSLog(@"%@", [sayBlock class]);
    sayBlock();
    obj = nil;//栈区的地址为置空了，obj.forward->obj中的第一个obj 置空了，它所指向的obj.forward堆区还存在。
    sayBlock();
    sayBlock();

//    NSLog(@"obj = %p  &obj = %@ retain  count = %ld\n", obj, obj,CFGetRetainCount((__bridge  CFTypeRef)(obj)));
    
}

-(void)block_print
{
    self.obj = [[NSMutableString alloc] initWithString:@"123"];//存储在栈区
    NSLog(@"obj = %p  &obj = %@ retain  count = %ld\n", self.obj, self.obj,CFGetRetainCount((__bridge  CFTypeRef)(self.obj)));
     self.sayBlock  = ^(){
  
        NSLog(@"obj = %p  &obj = %@ retain", self.obj, self.obj);

    };
#warning ARC 下是  __NSStackBlock__
    NSLog(@"%@", [self.sayBlock class]);
    self.sayBlock();
    self.obj = nil;
    self.sayBlock();
    
//    NSLog(@"obj = %p  &obj = %@ retain  count = %ld\n", obj, obj,CFGetRetainCount((__bridge  CFTypeRef)(obj)));
    
}


- (void)blockDemo3
{
    NSMutableString *strM= [NSMutableString stringWithString:@"hello"];
    
    NSLog(@"strM指针在栈区的地址%p strM内容在堆区的地址%p = %@",&strM,strM, strM);
    
    void (^block)() = ^ {
        
        // 只修改strM指向堆区的内容(字符串);没有修改strM指针所在的地址
        //(存放字符串的堆区地址没变，只是&strM变成堆区地址);
        [strM appendString:@"hehe"];
        
        NSLog(@"strM指针拷贝到堆区的新地址%p strM内容在堆区的地址%p  = %@",&strM,strM,strM);
    };
    
    block();
    NSLog(@"strM指针拷贝到堆区的新地址%p strM内容在堆区的地址%p  = %@",&strM,strM,strM);

    
}


@end
