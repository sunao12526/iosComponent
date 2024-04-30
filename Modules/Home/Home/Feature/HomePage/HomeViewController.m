//
//  HomeViewController.m
//  Home
//
//  Created by yangke on 2017/9/17.
//  Copyright © 2017年 jackie@youzan. All rights reserved.
//

#import <objc/runtime.h>
#import "HomeViewController.h"
#import "HomeBundle.h"
#import "HomeModuleService.h"
//#import "ShopModuleService.h"
//#import "SaleModuleService.h"
//#import "GoodsModuleService.h"
//#import "YZSTableViewModel.h"
//#import "YZWeakDefine.h"

@interface HomeViewController ()
@property (nonatomic, weak) IBOutlet UITableView *tableView;
//@property (nonatomic, strong) YZSTableViewModel *viewModel;
@end

@implementation HomeViewController

+ (void)load {
    [Bifrost bindURL:kRouteHomePage
           toHandler:^id _Nullable(NSDictionary * _Nullable parameters) {
        UIViewController *vc = [[HomeBundle storyboardWithName:@"home"] instantiateViewControllerWithIdentifier:@"HomeViewController"];
        return vc;
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Bifrost";
    self.navigationItem.backBarButtonItem.title = @"";
    self.navigationItem.backBarButtonItem.title = @"";
}

 

@end
