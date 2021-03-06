//
//  MSIdProvider.m
//  Demo
//
//  Created by zzq on 2019/12/31.
//  Copyright © 2019 bwhx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MSIdProvider.h"

@interface MSIdProvider ()

@end

@implementation MSIdProvider

/** 竖版激励视频 */
-(NSString *) rewardPortrait {
    return @"73646b0702001991";
}
/** 横版激励视频 */
-(NSString *) rewardLandscape {
    return @"100424260";
}
/** 信息流视频 */
-(NSString *) feedVideo {
    return @"100424259";
}
/** 信息流三图一文 */
-(NSString *) feedThreeImgs {
    return @"100424262";
}
/** 信息流上图下文 */
-(NSString *) feedImageVertical {
    //return @"100424257";
    return @"73646b0199001011";
}
/** 信息流左图右文 */
-(NSString *) feedImageHorizon {
    return @"100424256";
}
/** 信息流左图右文图文摘要 */
-(NSString *) feedImageHorizonDesc {
    return @"100424258";
}
/** 信息流预渲染 */
-(NSString *) feedPreRender {
    return @"";
}
/** 纯视频 */
-(NSString *) video {
    return @"987654002";
//    return @"1006736";
}
/** 视频暂停贴片 */
-(NSString *) videoImg {
    return @"100424254";
}
/** 图片 */
-(NSString *) image {
    return @"100424253";
}
/** 插屏 */
-(NSString *) insertScreen {
    return @"73646b0501001991";
}
/** 开屏 */
-(NSString *) splash {
    return @"73646b0401001091";
}
/** banner */
-(NSString *) banner {
    return @"73646b0301001991";
}
/** 平台名称 */
-(NSString *) platformName {
    return @"美数";
}

@end
