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

#import "Common/Common.h"
//#import "Mediator/Mediator.h"
//#import "TestModuleA/TestModuleA.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    [GCDAsyncSocket new];
//    [AFHTTPSessionManager alloc];
    [[Bifrost alloc]init];
    Common *ddd = [Common new];
//    Mediator *mmm = [Mediator new];
//    TestModuleA *aaa = [TestModuleA new];
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
