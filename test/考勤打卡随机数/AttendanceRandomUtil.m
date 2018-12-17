//
//  AttendanceRandomUtil.m
//  test
//
//  Created by suliangjin on 2018/6/6.
//  Copyright © 2018 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "AttendanceRandomUtil.h"

@implementation AttendanceRandomUtil


+ (int)getRandomNumber:(int)from to:(int)to
{
    return (int)(from + (arc4random() % (to - from + 1)));
}

+ (float)roundFloat:(float)price scale:(int)scale{
    NSString *temp = [NSString stringWithFormat:@"%.4f",price];
    NSDecimalNumber *numResult = [NSDecimalNumber decimalNumberWithString:temp];
    NSDecimalNumberHandler *roundUp = [NSDecimalNumberHandler
                                       decimalNumberHandlerWithRoundingMode:NSRoundBankers
                                       scale:scale
                                       raiseOnExactness:NO
                                       raiseOnOverflow:NO
                                       raiseOnUnderflow:NO
                                       raiseOnDivideByZero:YES];
    return [[numResult decimalNumberByRoundingAccordingToBehavior:roundUp] floatValue];
}



//-(int)getRandomNumber:(int)from to:(int)to
//{
//    return (int)(from + (arc4random() % (to - from + 1)));
//}
//
//
////处理位置坐标更新
//- (void)didUpdateBMKUserLocation:(BMKUserLocation *)userLocation
//{
//    // 获得地址成功后，就停止本地服务
//    [self.locService stopUserLocationService];
//
//    float latitude = [self getRandomNumber:-30 to:30]/100000.0;
//    float longitude = [self getRandomNumber:-30 to:30]/100000.0;
//
//    CLLocation *tempLocation = [[CLLocation alloc] initWithLatitude:24.4948 + latitude   longitude: 118.19335 + longitude];
//
//
//    __weak typeof(self) weakSelf = self;
//    CLGeocoder *clGeoCoder = [[CLGeocoder alloc] init];
//
//    [clGeoCoder reverseGeocodeLocation:tempLocation completionHandler: ^(NSArray *placemarks,NSError *error) {
//
//        if (error){
//            return;
//        }
//
//
//        [weakSelf callJSFromLocation:[placemarks firstObject] andLocation:tempLocation];
//
//        NSString *jsScript = [NSString stringWithFormat:@"iosLocationSuccess('%@','%@','%@')", self.strLatitude, self.strLongitude, self.fullAddress];
//        NSLog(@"jsScript = %@",jsScript);
//        [_wvContentView evaluateJavaScript:jsScript completionHandler:^(id _Nullable response, NSError * _Nullable error) {
//            //TODO
//        }];
//    }];
//}


@end
