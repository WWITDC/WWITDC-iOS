//
//  ITDCBarButtonItem.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ITDCBarButtonItem : UIButton

//创建文字按钮
+ (instancetype)buttonWithTitle:(NSString *)buttonTitle;

//创建图标按钮
+ (instancetype)buttonWithImageNormal:(UIImage *)imageNormal imageSelected:(UIImage *)imageSelected;

@end
