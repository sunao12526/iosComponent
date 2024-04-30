//
//  TestModuleA.m
//  TestModuleA
//
//  Created by PF on 2024/4/19.
//

#import "TestModuleA.h"
#import "AFNetworking.h"
#import "Mediator.h"
#import "Common.h"
@implementation TestModuleA
+ (void)load {
    [Mediator alloc];
}
@end
