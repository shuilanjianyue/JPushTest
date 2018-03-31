//
//  AppDelegate+PushEncapsulation.m
//  JPushTest
//
//  Created by Keyto on 2018/3/19.
//  Copyright © 2018年 CGZD. All rights reserved.
//

#import "AppDelegate+PushEncapsulation.h"
#import "PushEncapsulation.h"
@implementation AppDelegate (PushEncapsulation)

-(void)JPushApplication:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
    [[PushEncapsulation shareJPushManger] setupWithOption:launchOptions appKey:appKey channel:channel apsForProduction:isProduction advertisingIdentifier:nil];
    
    [[PushEncapsulation shareJPushManger] getRegisterIDCallBack:^(NSString *registerID){
        //获取注册id
        NSLog(@"%@",registerID);
        
    }];
    
    [[PushEncapsulation shareJPushManger] setBadge:0];
}


- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    // Required - 注册 DeviceToken
    [[PushEncapsulation shareJPushManger] registerDeviceToken:deviceToken];
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    
    // Required, iOS 7 Support
    [[PushEncapsulation shareJPushManger] handleRemoteNotification:userInfo];
    
    completionHandler(UIBackgroundFetchResultNewData);
    
    
     [[PushEncapsulation shareJPushManger]getUserDic:userInfo];
}


- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo {
    
    // Required,For systems with less than or equal to iOS6
    [[PushEncapsulation shareJPushManger] handleRemoteNotification:userInfo];
    
    [[PushEncapsulation shareJPushManger]getUserDic:userInfo];
    
}

@end
