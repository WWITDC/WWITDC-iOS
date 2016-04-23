//
//  SectionModel.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SectionModel : NSObject

@property (copy, nonatomic) NSString *sectionTitleText; //分组标题
@property (copy, nonatomic) NSArray *sectionDataSource; //分组数据

- (instancetype)initWithDict:(NSDictionary *)dict;

@end