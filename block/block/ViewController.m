//
//  ViewController.m
//  block
//
//  Created by mc on 2017/11/24.
//  Copyright © 2017年 mc. All rights reserved.
//

#import "ViewController.h"
#import "blockViewController.h"

#import "netWork.h"

#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
////    UINavigationController *na=[[UINavigationController alloc]init];
//    self.navigationController =[[UINavigationController alloc]init];
    
   
    [self pageTo];//页面传值
    [self methodTo];//方法传值
    
    // Do any additional setup after loading the view, typically from a nib.
}

//页面传值
-(void)pageTo
{
    UIButton *but= [UIButton buttonWithType:UIButtonTypeSystem];
    [but addTarget:self action:@selector(pageAction) forControlEvents:1];
    but.frame=CGRectMake(10, 100, WIDTH-20, 30);
    [but setTitle:@"页面传值" forState: UIControlStateNormal];
    but.backgroundColor=[UIColor grayColor];
    [self.view addSubview:but];
    
    self.mylabel=[[UILabel alloc]initWithFrame:CGRectMake(10, 150, WIDTH-20, 30)];
    [self.view addSubview:self.mylabel];
    self.mylabel.backgroundColor=[UIColor grayColor];
    self.mylabel.textAlignment=YES;
    self.mylabel.textColor=[UIColor redColor];
}

-(void)pageAction{
    
    blockViewController *b=[[blockViewController alloc]init];
    b.NextViewControllerBlock = ^(NSString *tfText){
        NSLog(@"ddd=%@",tfText);
        self.mylabel.text = tfText;
    };
    [self.navigationController pushViewController:b animated:YES];
    
}

//方法传值
-(void)methodTo
{
    UIButton *but= [UIButton buttonWithType:UIButtonTypeSystem];
    [but addTarget:self action:@selector(methodToAction) forControlEvents:1];
    but.frame=CGRectMake(10, 220, WIDTH-20, 30);
    [but setTitle:@"方法传值" forState: UIControlStateNormal];
    but.backgroundColor=[UIColor grayColor];
    [self.view addSubview:but];
    
    self.amylabel=[[UILabel alloc]initWithFrame:CGRectMake(10, 270, WIDTH-20, 30)];
    [self.view addSubview:self.amylabel];
    self.amylabel.backgroundColor=[UIColor grayColor];
    self.amylabel.textAlignment=YES;
    self.amylabel.textColor=[UIColor redColor];
}

-(void)methodToAction{
    
    [netWork getNetWork:^(id response) {
        self.amylabel.text=response;
    } failoperation:^(NSError *error) {
        
    }];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
