//
//  blockViewController.h
//  block
//
//  Created by mc on 2017/11/24.
//  Copyright © 2017年 mc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface blockViewController : UIViewController
//定义block
@property (nonatomic,copy) void (^NextViewControllerBlock)(NSString *tfText);

@end
