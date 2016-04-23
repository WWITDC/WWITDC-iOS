//
//  PushTransitionAnimation.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PushTransitionAnimation : NSObject <UIViewControllerAnimatedTransitioning>

//阴影图层
@property (strong, nonatomic) UIView *shadowView;

@end
