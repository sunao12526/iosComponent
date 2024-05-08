//
//  Common.m
//  Common
//
//  Created by PF on 2024/4/30.
//

#import "Common.h"
#import "AFNetworking.h"
@implementation Common
+ (void)load {
  [AFHTTPSessionManager new];
  NSLog(@"Common load");
}
+ (void)initialize {
  NSLog(@"Common initialize");
}
@end
