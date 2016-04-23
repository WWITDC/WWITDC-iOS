//
//  ITDCHttpRequest.h
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITDCHttpRequest : NSObject

+ (void)getDataWithURL:(NSString *)url
             parameter:(NSDictionary *)parameter
               success:(void (^)(id responseDict))success
                  fail:(void (^)(NSError *error))fail;

@end
