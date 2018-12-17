//
//  test1.m
//  test
//
//  Created by suliangjin on 2018/7/25.
//  Copyright © 2018 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "test1.h"

@implementation test1

- (void)xxxx
{
    RNIMShowMenu _showMenu = RNIMShowMenuCopy | RNIMShowMenuRetry;
    _showMenu |= RNIMShowMenuForward;
    
    _showMenu = _showMenu ^ RNIMShowMenuForward;
    
    _showMenu |= RNIMShowMenuRevoke;
    _showMenu |= RNIMShowMenuRevoke;
    
    _showMenu = _showMenu ^ RNIMShowMenuRevoke;
    
    
    NSLog(@"");
}
@end
