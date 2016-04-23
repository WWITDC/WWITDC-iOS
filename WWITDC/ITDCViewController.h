//
//  ViewController.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITDCBarButtonItem.h"

@interface ITDCViewController : UIViewController

@property (strong, nonatomic) UIView *navigationView; //自定义导航栏
@property (strong, nonatomic) UIControl *navigationTitleView; //标题视图
@property (strong, nonatomic) UILabel *navigationTitle; //标题文本控件
@property (copy, nonatomic) NSString *navigationTitleText; //标题文字
@property (strong, nonatomic) UIColor *navigationBackgroundColor; //导航栏背景色
@property (strong, nonatomic) UIButton *navigationLeftButton; //导航栏左侧按钮
@property (strong, nonatomic) UIButton *navigationRightButton; //导航栏右侧按钮
@property (copy, nonatomic) NSArray<UIButton *> *navigationLeftButtons; //导航栏左侧按钮集合（最多两个）
@property (copy, nonatomic) NSArray<UIButton *> *navigationRightButtons; //导航栏右侧按钮集合（最多两个）
@property (nonatomic) CGFloat navigationAlpha; //导航栏背景透明度

@end