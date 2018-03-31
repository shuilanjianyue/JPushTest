//
//  PushEncapsulation.h
//  JPushTest
//
//  Created by Keyto on 2018/3/19.
//  Copyright © 2018年 CGZD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PushEncapsulation : NSObject

+(instancetype)shareJPushManger;




// 在应用启动的时候调用
- (void)setupWithOption:(NSDictionary *)launchingOption
                 appKey:(NSString *)appKey
                channel:(NSString *)channel
       apsForProduction:(BOOL)isProduction
  advertisingIdentifier:(NSString *)advertisingId;

// 在appdelegate注册设备处调用
- (void)registerDeviceToken:(NSData *)deviceToken;

//设置角标
- (void)setBadge:(int)badge;

//获取注册ID
- (void)getRegisterIDCallBack:(void(^)(NSString *registerID))completionHandler;

//处理推送信息
- (void)handleRemoteNotification:(NSDictionary *)remoteInfo;


//处理跳转
- (void)getUserDic:(NSDictionary *)userDic;

@end
