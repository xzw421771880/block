//
//  blockViewController.m
//  block
//
//  Created by mc on 2017/11/24.
//  Copyright © 2017年 mc. All rights reserved.
//

#import "blockViewController.h"

#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height

@interface blockViewController ()

@end

@implementation blockViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIButton *but= [UIButton buttonWithType:UIButtonTypeSystem];
    [but addTarget:self action:@selector(aaa) forControlEvents:1];
    but.frame=CGRectMake(10, 100, WIDTH-20, 30);
    [but setTitle:@"页面传值" forState: UIControlStateNormal];
    but.backgroundColor=[UIColor grayColor];
    [self.view addSubview:but];
    // Do any additional setup after loading the view.
}

-(void)aaa{
    if (self.NextViewControllerBlock) {
        self.NextViewControllerBlock(@"回调传的值");
        
    }
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
