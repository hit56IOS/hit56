//
//  NetworkHelper.h
//  hit56
//
//  Created by gongdeyin on 4/26/15.
//  Copyright (c) 2015 anlu. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface NetworkHelper : NSObject
@property(nonatomic,readonly)AFHTTPRequestOperationManager *manager;
+(id)shareHepler;
@end
