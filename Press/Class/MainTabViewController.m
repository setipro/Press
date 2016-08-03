//
//  MainTabViewController.m
//  Press
//
//  Created by bin on 16/8/3.
//  Copyright © 2016年 bin. All rights reserved.
//

#import "MainTabViewController.h"
#import "MyViewController.h"
#import "DiscoveryViewController.h"
#import "OpenViewController.h"

@interface MainTabViewController ()
@property (nonatomic, strong) MyViewController *myViewController;
@property (nonatomic, strong) DiscoveryViewController *discoveryViewController;
@property (nonatomic, strong) OpenViewController *openViewController;
@end

@implementation MainTabViewController

#pragma mark - life cycle
- (instancetype)init {
    self = [super init];
    if (self) {
        self.myViewController = [[MyViewController alloc] init];
        self.myViewController.tabBarItem.title = @"我的";
        self.myViewController.tabBarItem.image = [UIImage imageNamed:@"MyTab"];
        self.discoveryViewController = [[DiscoveryViewController alloc] init];
        self.discoveryViewController.tabBarItem.title = @"发现";
        self.discoveryViewController.tabBarItem.image = [UIImage imageNamed:@"DiscoveryTab"];
        self.openViewController = [[OpenViewController alloc] init];
        self.openViewController.tabBarItem.title = @"发布";
        self.openViewController.tabBarItem.image = [UIImage imageNamed:@"OpenTab"];
        self.viewControllers = [NSArray arrayWithObjects:self.myViewController, self.discoveryViewController, self.openViewController, nil];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tabBar.tintColor = [UIColor blackColor];
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
