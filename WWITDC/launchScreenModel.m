//
//  launchScreenModel.m
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import "launchScreenModel.h"

@implementation launchScreenModel

- (instancetype)initWithDict:(NSDictionary *)dict {
    self = [super init];
    if (self) {
        _text = [dict objectForKey:@"text"];
        _image = [dict objectForKey:@"img"];
    }
    
    return self;
}

@end
