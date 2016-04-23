//
//  SectionModel.m
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import "SectionModel.h"
#import "ArticleListModel.h"

@implementation SectionModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    
    if (self) {
        self.sectionTitleText = [self getSectionTitleWithDate:[dict objectForKey:@"date"]];
        
        ArticleListModel *model = [[ArticleListModel alloc] initWithArray:[dict objectForKey:@"stories"]];
        self.sectionDataSource = model.articleList;
    }
    
    return self;
}

- (NSString *)getSectionTitleWithDate:(NSString *)dateText {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyyMMdd"];
    NSDate *date = [formatter dateFromString:dateText];
    formatter.locale = [NSLocale localeWithLocaleIdentifier:@"zh-CH"];
    [formatter setDateFormat:@"MM月dd日 EEEE"];
    NSString *sectionTitleText = [formatter stringFromDate:date];
    
    return sectionTitleText;
}

@end
