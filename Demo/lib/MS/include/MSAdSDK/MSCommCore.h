//
//  MSCommCore.h
//  MSAdSDK
//
//  Created by yang on 2019/8/23.
//  Copyright © 2019 yang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "MSAdModel.h"

@interface MSCommCore : NSObject
//获取文本大小
+ (CGSize)getTextSize:(NSString *)message fontSize:(NSInteger)fontSize maxChatWidth:(NSInteger)maxChatWidth;

+ (UIImage *)imageNamed:(NSString *)name;

+ (NSString*)OpenUDID;

/**
 * 获取广告请求的公共参数
 */
+ (NSMutableDictionary *)publicParams;

/**
 * 获取广告的参数
 * @param pid 广告位id
 */
+ (NSMutableDictionary *)adParams:(NSString *)pid;

/**
  统一处理上报类型
 */
+ (NSString *)sdkModel:(MSSDKModel*)sdkModel report:(NSInteger)report;
/**
1、 SDKType  0 是广点通  1是穿山甲
2、0 req:加载广告前  1rsp:加载广告成功  2imp:曝光  3 clk:点击
 */
+ (void)uploadSDKModel:(MSAdModel*)adModel SDKType:(NSInteger)SDKType report:(NSInteger)report;

+ (NSString *)getPlatformName:(NSInteger)SDKType;
@end

