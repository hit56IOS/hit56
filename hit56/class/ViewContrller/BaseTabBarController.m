//
//  BaseTabBarController.m
//  hit56
//
//  Created by gongdeyin on 4/26/15.
//  Copyright (c) 2015 anlu. All rights reserved.
//

#import "BaseTabBarController.h"
#import "MainViewController.h"
#import "PostViewController.h"
#import "SearchViewController.h"
#import "SettingViewController.h"

@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"hillo";
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITabBarItem *itemMain = [[UITabBarItem alloc] initWithTitle:@"首页" image:nil selectedImage:nil];
    UITabBarItem *itemSearch = [[UITabBarItem alloc] initWithTitle:@"搜索" image:nil selectedImage:nil];
    UITabBarItem *itemPost = [[UITabBarItem alloc] initWithTitle:@"发布" image:nil selectedImage:nil];
    UITabBarItem *itemSetting = [[UITabBarItem alloc] initWithTitle:@"设置" image:nil selectedImage:nil];
    MainViewController *mainViewController = [[MainViewController alloc] init];
    mainViewController.tabBarItem = itemMain;
    SearchViewController *searcheController = [[SearchViewController alloc] init];
    searcheController.tabBarItem = itemSearch;
    PostViewController *postController = [[PostViewController alloc] init];
    postController.tabBarItem = itemPost;
    SettingViewController *settingController = [[SettingViewController alloc] init];
    settingController.tabBarItem = itemSetting;
    
    self.viewControllers = @[mainViewController,searcheController,postController,settingController];
    self.selectedIndex = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
