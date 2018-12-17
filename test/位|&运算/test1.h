//
//  test1.h
//  test
//
//  Created by suliangjin on 2018/7/25.
//  Copyright © 2018 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, RNIMShowMenu) {
    RNIMShowMenuNone                = 0,        // 无菜单
    RNIMShowMenuRevoke              = 1 << 0,   // 撤回
    RNIMShowMenuDelete              = 1 << 1,   // 删除
    RNIMShowMenuRetry               = 1 << 2,   // 重发
    RNIMShowMenuCopy                = 1 << 3,   // 复制
    RNIMShowMenuPreview             = 1 << 4,   // 预览
    RNIMShowMenuForward             = 1 << 5,   // 转发
    RNIMShowMenuSave2Cloud          = 1 << 6    // 存到云盘
};


@interface test1 : NSObject

@end
