//
//  EmptyViewController.m
//  GDTTestDemo
//
//  Created by 高超 on 13-11-1.
//  Copyright (c) 2013年 高超. All rights reserved.
//

#import "InterstitialViewController.h"
#import "MSInterstitial.h"
#import "IdProviderFactory.h"

@interface InterstitialViewController() <MSInterstitialDelegate>

@property (nonatomic, strong) MSInterstitial *interstitial;
@property (weak, nonatomic) IBOutlet UITextField *positionID;
@property (weak, nonatomic) IBOutlet UILabel *interstitialStateLabel;

@end

@implementation InterstitialViewController

static NSString *INTERSTITIAL_STATE_TEXT = @"插屏状态";

#pragma mark - lifeCycle
- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self.view endEditing:YES];
}


#pragma mark - event response
- (IBAction)loadAd:(id)sender {
//    NSLog(@"load");
    if(self.interstitial) {
        self.interstitial.delegate = nil;
    }
//    NSString *pid = @"100424148";
    NSString *pid = [[[IdProviderFactory sharedIdProviderFactory] getDefaultProvider] insertScreen];
    self.interstitial = [[MSInterstitial alloc] initWithCurController:self pid:pid];
    self.interstitial.delegate = self;
}

- (IBAction)showAd:(id)sender
{
    [self.interstitial showAd];
}

#pragma mark - MSInterstitialDelegate

/**
 *  广告预加载成功回调
 *  详解:当接收服务器返回的广告数据成功且预加载后调用该函数
 */
- (void)interstitialSuccessToLoadAd:(MSInterstitial *)interstitial{
    dispatch_async(dispatch_get_main_queue(), ^{
       self.interstitialStateLabel.text = [NSString stringWithFormat:@"%@:%@",INTERSTITIAL_STATE_TEXT,@"Success Loaded." ];
        });
}

/**
 *  广告预加载失败回调
 *  详解:当接收服务器返回的广告数据失败后调用该函数
 */
- (void)interstitialFailToLoadAd:(MSInterstitial *)interstitial error:(NSError *)error{
    dispatch_async(dispatch_get_main_queue(), ^{
        self.interstitialStateLabel.text = [NSString stringWithFormat:@"%@:%@,Error : %@",INTERSTITIAL_STATE_TEXT,@"Fail Loaded.",error ];
    });
//    NSLog(@"interstitial fail to load, Error : %@",error);
}

/**
 *  插屏广告视图展示成功回调
 *  详解: 插屏广告展示成功回调该函数
 */
- (void)interstitialDidPresentScreen:(MSInterstitial *)interstitial{
        dispatch_async(dispatch_get_main_queue(), ^{
     self.interstitialStateLabel.text = [NSString stringWithFormat:@"%@:%@",INTERSTITIAL_STATE_TEXT,@"Success Presented." ];
            });
}

/**
 *  插屏广告展示结束回调
 *  详解: 插屏广告展示结束回调该函数
 */
- (void)interstitialDidDismissScreen:(MSInterstitial *)interstitial{
            dispatch_async(dispatch_get_main_queue(), ^{
      self.interstitialStateLabel.text = [NSString stringWithFormat:@"%@:%@",INTERSTITIAL_STATE_TEXT,@"Finish Presented." ];
                });
    self.interstitial = nil;
}

/**
 *  插屏广告点击回调
 */
- (void)interstitialClicked:(MSInterstitial *)interstitial{
    
}

/**
 *  插屏广告页被关闭
 */
- (void)interstitialAdDidDismissFullScreenModal:(MSInterstitial *)interstitial{
    
}

- (void)dealloc
{
    
}
@end