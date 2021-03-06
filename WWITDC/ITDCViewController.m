//
//  ViewController.m
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//


#import "ITDCViewController.h"

@implementation ITDCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //边缘不留白
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    [self createNavigationViewDependDevice];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 创建导航栏视图
- (void)createNavigationViewDependDevice{
    //初始化navigationView并添加
    self.navigationView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 54)];
    self.navigationView.backgroundColor = DEFAULT_NAVIGATIONCOLOR;
    
    [self.view addSubview:self.navigationView];
}

#pragma mark - 改变导航栏背景透明度
- (void)setNavigationAlpha:(CGFloat)navigationAlpha{
    self.navigationView.backgroundColor = [self.navigationView.backgroundColor colorWithAlphaComponent:navigationAlpha];
}

#pragma mark - 改变导航栏颜色
- (void)setNavigationBackgroundColor:(UIColor *)navigationBackgroundColor{
    self.navigationView.backgroundColor = navigationBackgroundColor;
}

#pragma mark - 设置导航栏标题
- (void)setNavigationTitleText:(NSString *)navigationTitleText {
    //    根据文本计算宽度
    CGSize labelSize = [navigationTitleText sizeWithAttributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:17.0f]}];
    
    //初始化labelTitle并调整位置
    if (labelSize.width > SCREEN_WIDTH) {
        labelSize.width = SCREEN_WIDTH;
    }
    _navigationTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, labelSize.width, 42)];
    CGPoint center = self.navigationView.center;
    center.y = center.y + 9;
    _navigationTitle.center = center;
    
    //文字基本设置
    _navigationTitle.textColor = [UIColor whiteColor];
    _navigationTitle.numberOfLines = 1;
    _navigationTitle.lineBreakMode = NSLineBreakByTruncatingTail;
    _navigationTitle.textAlignment = NSTextAlignmentCenter;
    _navigationTitle.font = [UIFont boldSystemFontOfSize:17.0f];
    _navigationTitle.text = navigationTitleText;
    [self.navigationView addSubview:_navigationTitle];
}

#pragma mark - 自定义导航栏标题位置视图
- (void)setNavigationTitleView:(UIControl *)navigationTitleView{
    CGPoint titleView;
    titleView.x = SCREEN_WIDTH / 2;
    titleView.y = self.navigationView.frame.size.height / 2 + 7;
    navigationTitleView.center = titleView;
    
    [self.navigationView addSubview:navigationTitleView];
}

#pragma mark - 添加导航栏左侧按钮
- (void)setNavigationLeftButton:(UIButton *)navigationLeftButton{
    //判断是文字按钮还是图片按钮，两者坐标稍有不同
    CGFloat leftButtonWidth = navigationLeftButton.frame.size.width;
    CGFloat leftButtonHeight = navigationLeftButton.frame.size.height;
    
    navigationLeftButton.frame = CGRectMake(10, self.navigationView.frame.size.height / 2 - 8, leftButtonWidth, leftButtonHeight);
    
    [self.navigationView addSubview:navigationLeftButton];
}

#pragma mark - 添加导航栏右侧按钮
- (void)setNavigationRightButton:(UIButton *)navigationRightButton{
    //同上
    CGFloat rightButtonWidth = navigationRightButton.frame.size.width;
    CGFloat rightButtonHeight = navigationRightButton.frame.size.height;
    
    navigationRightButton.frame = CGRectMake(SCREEN_WIDTH - navigationRightButton.frame.size.width - 10, self.navigationView.frame.size.height / 2 - 8, rightButtonWidth, rightButtonHeight);
    
    [self.navigationView addSubview:navigationRightButton];
}

#pragma mark - 添加导航栏左侧按钮集合
- (void)setNavigationLeftButtons:(NSArray<UIButton *> *)navigationLeftButtons{
    CGFloat firstLeftButtonWidth = navigationLeftButtons[0].frame.size.width;
    CGFloat firstLeftButtonHeight = navigationLeftButtons[0].frame.size.height;
    
    CGFloat secondLeftButtonWidth = navigationLeftButtons[1].frame.size.width;
    CGFloat secondLeftButtonHeight = navigationLeftButtons[1].frame.size.height;
    
    navigationLeftButtons[0].frame = CGRectMake(10, self.navigationView.frame.size.height / 2 - 8, firstLeftButtonWidth, firstLeftButtonHeight);
    navigationLeftButtons[1].frame = CGRectMake(10 + firstLeftButtonWidth + 8, self.navigationView.frame.size.height / 2 - 8, secondLeftButtonWidth, secondLeftButtonHeight);
    //8为两个按钮之间的间隔
    
    [self.navigationView addSubview:navigationLeftButtons[0]];
    [self.navigationView addSubview:navigationLeftButtons[1]];
}

#pragma mark - 添加导航栏右侧按钮集合
- (void)setNavigationRightButtons:(NSArray<UIButton *> *)navigationRightButtons{
    CGFloat firstRightButtonWidth = navigationRightButtons[0].frame.size.width;
    CGFloat firstRightButtonHeight = navigationRightButtons[0].frame.size.height;
    
    CGFloat secondRightButtonWidth = navigationRightButtons[1].frame.size.width;
    CGFloat secondRightButtonHeight = navigationRightButtons[1].frame.size.height;
    
    navigationRightButtons[0].frame = CGRectMake(SCREEN_WIDTH - 10 - firstRightButtonWidth, self.navigationView.frame.size.height / 2 - 8, firstRightButtonWidth, firstRightButtonHeight);
    navigationRightButtons[1].frame = CGRectMake(SCREEN_WIDTH - 10 - firstRightButtonWidth - 8 - secondRightButtonWidth, self.navigationView.frame.size.height / 2 - 8, secondRightButtonWidth, secondRightButtonHeight);
    //8为两个按钮之间的间隔
    
    [self.navigationView addSubview:navigationRightButtons[0]];
    [self.navigationView addSubview:navigationRightButtons[1]];
}

@end
