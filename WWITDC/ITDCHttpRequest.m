//
//  ITDCHttpRequest.m
//  WWITDC
//
//  Created by Zeyu Jiang on 16/4/23.
//  Copyright © 2016年 WWITDC. All rights reserved.
//

#import "ITDCHttpRequest.h"
#import <AFNetworking.h>

@implementation ITDCHttpRequest

+ (void)getDataWithURL:(NSString *)url
             parameter:(NSDictionary *)parameter
               success:(void (^)(id))success
                  fail:(void (^)(NSError *))fail{
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    [manager GET:url
      parameters:parameter
        progress:nil
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             success(responseObject);
         } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             fail(error);
         }];
}

@end
