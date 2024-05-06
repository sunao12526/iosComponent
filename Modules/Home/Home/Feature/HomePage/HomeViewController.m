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
@end

@implementation HomeViewController

+ (void)load {
    [Bifrost bindURL:kRouteHomePage
           toHandler:^id _Nullable(NSDictionary * _Nullable parameters) {
        UIViewController *vc = [HomeViewController new];
        return vc;
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Bifrost";
    self.navigationItem.backBarButtonItem.title = @"";
    self.navigationItem.backBarButtonItem.title = @"";
    self.view.backgroundColor = [UIColor redColor];
    
}

 

@end
