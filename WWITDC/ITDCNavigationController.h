//
//  ITDCNavigationController.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PushTransitionAnimation.h"
#import "PopTransitionAnimation.h"
#import "ITDCViewController.h"

typedef NS_ENUM(NSUInteger, InteractivePopGestureRecognizerType) {
    InteractivePopGestureRecognizerNone, //没有返回手势
    InteractivePopGestureRecognizerEdge, //边缘返回手势
    InteractivePopGestureRecognizerFullScreen //全屏返回手势
};

@interface ITDCNavigationController : UINavigationController <UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@property (strong, nonatomic) UIPercentDrivenInteractiveTransition *percentDrivenInteractiveTransition;

//选择返回手势方式（边缘触发/全屏触发）
@property (nonatomic, assign) InteractivePopGestureRecognizerType interactivePopGestureRecognizerType;

@end
