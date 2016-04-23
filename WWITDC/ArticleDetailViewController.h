//
//  ArticleDetailViewController.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import "ITDCViewController.h"

@class ArticleDetailModel;

@interface ArticleDetailViewController : ITDCViewController <UIScrollViewDelegate, UIWebViewDelegate>

@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (strong, nonatomic) UIView *topView; //顶部空间容器
@property (strong, nonatomic) UIScrollView *imageScrollView; //图片拉伸容器
@property (strong, nonatomic) UIImageView *topImageView; //顶部图片

@property (strong, nonatomic) NSString *articleID; //加载文章的ID

@property (strong, nonatomic) ArticleDetailModel *articleDetailModel;

@end
