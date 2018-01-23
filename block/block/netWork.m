//
//  netWork.m
//  block
//
//  Created by mc on 2018/1/23.
//  Copyright © 2018年 mc. All rights reserved.
//

#import "netWork.h"

@implementation netWork

+ (void)getNetWork:(Success)success failoperation:(Fail)fail{
    success(@"方法回调的值");
}
@end
