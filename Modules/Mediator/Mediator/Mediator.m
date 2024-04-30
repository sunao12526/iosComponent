//
//  Mediator.m
//  Mediator
//
//  Created by PF on 2024/4/18.
//

#import "Mediator.h"
#import "AFNetworking.h"
#import "TestModuleA/TestModuleA.h"
@implementation Mediator
+ (void)load {
  [AFHTTPSessionManager new];
    [TestModuleA new];
  NSLog(@"Common load");
}
+ (void)initialize {
  NSLog(@"Common initialize");
}
@end
