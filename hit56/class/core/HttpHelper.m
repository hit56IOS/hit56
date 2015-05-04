//
//  HttpHelper.m
//  hit56
//
//  Created by gongdeyin on 5/4/15.
//  Copyright (c) 2015 anlu. All rights reserved.
//

#import "HttpHelper.h"
@implementation HttpHelper
-(void)requestWithPath:(NSString *)pathName  completed:(httpCompleted)completed faild:(httpFaild)faild {
    NSString *urlString = [NSString stringWithFormat:@"%@/%@",BaseURL,pathName];
    NSURL *url = [NSURL  URLWithString:[urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    AFHTTPRequestOperation *operation = [self.manager HTTPRequestOperationWithRequest:[NSURLRequest requestWithURL:url] success:^(AFHTTPRequestOperation *operation, id responseObject) {
        completed(YES,responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        faild(YES);
    }];
    [self.manager.operationQueue addOperation:operation];
}
@end
