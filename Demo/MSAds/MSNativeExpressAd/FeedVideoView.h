//
//  FeedVideoView.h
//  Demo
//
//  Created by zzq on 2020/2/28.
//  Copyright © 2020 bwhx. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "MSFeedVideoView.h"
#import "MSAdModel.h"

@interface FeedVideoView : UIView <MSFeedVideoDelegate>

@property (nonatomic, strong)MSFeedVideoView *mediaView;

/**
 *  构造方法
 *  详解：frame - banner 展示的位置和大小
 */
- (instancetype)initWithWidth:(CGFloat)width adModel:(MSAdModel*)adModel;

+ (CGFloat)heightCellForRow:(MSAdModel*)adModel width:(CGFloat)width;

- (UIView *)getMediaViewContainer;

@end
