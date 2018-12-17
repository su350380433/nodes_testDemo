//
//  TestPushVCViewController.m
//  test
//
//  Created by suliangjin on 2018/7/2.
//  Copyright © 2018 Xiamen Rongneng Technology Co., Ltd. All rights reserved.
//

#import "TestPushVCViewController.h"

@interface TestPushVCViewController ()

@end

@implementation TestPushVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor blueColor];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    button.backgroundColor = [UIColor redColor];
    
    button.titleLabel.text = [NSString stringWithFormat:@"第%ld",[[self.navigationController childViewControllers] count]];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(buttonAction) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)buttonAction
{
    TestPushVCViewController *vc = [[TestPushVCViewController alloc] init];
    [self.navigationController pushViewController:vc animated:vc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
