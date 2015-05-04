//
//  NetworkHelper.m
//  hit56
//
//  Created by gongdeyin on 4/26/15.
//  Copyright (c) 2015 anlu. All rights reserved.
//

#import "NetworkHelper.h"
#import "AFNetworking.h"

@interface NetworkHelper ()
@end
@implementation NetworkHelper
+(id)shareHepler {
    static dispatch_once_t onceToken;
    static NetworkHelper *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}


-(id)init {
    self = [super init];
    if (self) {
        _manager = [AFHTTPRequestOperationManager manager];
    }
    
    return self;
}

@end
