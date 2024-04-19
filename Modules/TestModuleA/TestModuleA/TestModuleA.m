//
//  TestModuleA.m
//  TestModuleA
//
//  Created by PF on 2024/4/19.
//

#import "TestModuleA.h"
#import "Mediator/Mediator.h"
@implementation TestModuleA
+ (void)load {
    [Mediator alloc];
}
@end
