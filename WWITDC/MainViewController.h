//
//  MainViewController.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import "ITDCViewController.h"

@interface MainViewController : ITDCViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIView *menuView; //菜单容器
@property (strong, nonatomic) IBOutlet UIView *ListView; //列表容器
@property (strong, nonatomic) UIControl *tapView;

@end
