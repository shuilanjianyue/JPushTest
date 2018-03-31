//
//  AppDelegate+PushEncapsulation.h
//  JPushTest
//
//  Created by Keyto on 2018/3/19.
//  Copyright © 2018年 CGZD. All rights reserved.
//

#import "AppDelegate.h"

static NSString *appKey = @"202742ac9a2230c9fd216548";
static NSString *channel = @"App Store";
static BOOL isProduction = NO;

@interface AppDelegate (PushEncapsulation)

-(void)JPushApplication:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions;

@end
