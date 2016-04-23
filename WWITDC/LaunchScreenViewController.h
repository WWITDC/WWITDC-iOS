//
//  LaunchScreenViewController.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import "ITDCViewController.h"

@class launchScreenModel;

@interface LaunchScreenViewController : ITDCViewController

@property (strong, nonatomic) IBOutlet UIImageView *imageLaunchScreen; //启动图片
@property (strong, nonatomic) IBOutlet UILabel *textCopyright; //版权信息

@property (strong, nonatomic) launchScreenModel *model;

@end