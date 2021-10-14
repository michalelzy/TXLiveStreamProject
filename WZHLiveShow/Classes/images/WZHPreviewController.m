//
//  WZHPreviewController.m
//  LivePlayer
//
//  Created by wszyxc on 16/8/1.
//  Copyright © 2016年 wszyxc. All rights reserved.
//

#import "WZHPreviewController.h"

#import "LFLivePreview.h"

@interface WZHPreviewController ()

@end

@implementation WZHPreviewController





- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)setupBgImageView{
    
    UIImageView *bgImageView = [[UIImageView alloc]initWithFrame:DeviceFrame];
    
    bgImageView.contentMode = UIViewContentModeCenter;
    
    bgImageView.image = IMG(@"bg_zbfx");
    
    [self.view insertSubview:bgImageView atIndex:0];
}

///系统会自动调用这个 loadView方法，来创建 preview 实例。并给 block 指派一个闭包表达式，以待调用。
- (void)loadView{
    
    LFLivePreview *preView = [[LFLivePreview alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    self.view = preView;
    
    
    preView.block = ^{
      
        [self dismissViewControllerAnimated:YES completion:^{
            
        }];
        
    };
    
    
}



@end
