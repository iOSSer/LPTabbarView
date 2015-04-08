//
//  ViewController.m
//  LPTabbarView
//
//  Created by lipeng on 15/4/8.
//  Copyright (c) 2015年 lipeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

static const CGFloat tabbarHeight = 50;

//static const 

- (void)viewDidAppear:(BOOL)animated
{
    
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CGSize mainSize = [UIScreen mainScreen].bounds.size;
    
    self.tabbar = [[LPTabbar alloc] initWithFrame:CGRectMake(0, mainSize.height - tabbarHeight + 1, mainSize.width, tabbarHeight)];
    
    self.tabbar.tabItems = @[@"聊天", @"通讯录", @"设置"];
    
    self.tabbar.backgroundColor = [UIColor grayColor];
    
    self.tabbar.buttonBlock = ^(UIButton *button)
    {
        NSLog(@"%ld", (long)button.tag);
    };
    
    [self.view addSubview:self.tabbar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
