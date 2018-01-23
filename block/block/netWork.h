//
//  netWork.h
//  block
//
//  Created by mc on 2018/1/23.
//  Copyright © 2018年 mc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^Success)(id response);
typedef void(^Fail)(NSError *error);

@interface netWork : NSObject

+ (void)getNetWork:(Success)success failoperation:(Fail)fail;

@end
