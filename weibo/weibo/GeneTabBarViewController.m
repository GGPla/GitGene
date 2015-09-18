//
//  GeneTabBarViewController.m
//  weibo
//
//  Created by tarena1 on 15/9/18.
//  Copyright © 2015年 tarena. All rights reserved.
//

#import "GeneTabBarViewController.h"

@interface GeneTabBarViewController ()

@end

@implementation GeneTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)buildChildViewController:(UIViewController *)childVC tabBarTitle:(NSString *)title image:(NSString *)imageName selectedImage:(NSString *)selectedImageName{
    childVC.view.backgroundColor = [UIColor orangeColor];
    childVC.tabBarItem.title = @"首页";
    childVC.tabBarItem.image = [UIImage imageNamed:imageName];
    UIImage *selectedImagName = [UIImage imageNamed:selectedImageName];
    UIImage *selectedName = [selectedImagName imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childVC.tabBarItem.selectedImage = selectedName;
    [self addChildViewController:childVC];
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
