//
//  HttpHelper.h
//  hit56
//
//  Created by gongdeyin on 5/4/15.
//  Copyright (c) 2015 anlu. All rights reserved.
//

#import "NetworkHelper.h"
typedef void(^httpCompleted)(BOOL finish,id respones);
typedef void(^httpFaild)(BOOL faild);

@interface HttpHelper : NetworkHelper
-(void)requestWithPath:(NSString *)pathName  completed:(httpCompleted)completed faild:(httpFaild)faild;
@end
