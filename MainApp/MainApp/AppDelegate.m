//
//  AppDelegate.m
//  MainApp
//
//  Created by PF on 2024/4/18.
//

#import "AppDelegate.h"
#import "AFNetworking.h"
#import "BifrostHeader.h"
#import "GCDAsyncSocket.h"

//#import "Common/Common.h"
//#import "Mediator/Mediator.h"
//#import "TestModuleA/TestModuleA.h"

#define Safe(obj) obj ? obj : [NSNull null]

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize window = _window;
 
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //    [AFHTTPSessionManager alloc];
    //    [[Bifrost alloc]init];
    //    Common *ddd = [Common new];
    //    Mediator *mmm = [Mediator new];
    //    TestModuleA *aaa = [TestModuleA new];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    if (@available(iOS 13.0, *)){
        //指定浅色模式
        self.window.overrideUserInterfaceStyle = UIUserInterfaceStyleLight;
    };
    [Bifrost checkAllModulesWithSelector:_cmd arguments:@[Safe(application), Safe(launchOptions)]];
    return YES;
}

@end
