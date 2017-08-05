//
//  centerViewController.m
//  RightPage
//
//  Created by apple on 2017/8/5.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "centerViewController.h"

#import "UIViewController+MMDrawerController.h"
#import "MMDrawerController/MMDrawerBarButtonItem.h"

@interface centerViewController ()

@end

@implementation centerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"left" style:UIBarButtonItemStyleDone target:self action:@selector(leftAction)];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"right" style:UIBarButtonItemStyleDone target:self action:@selector(rightAction)];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    self.title = @"首页";
    
    
    
}

-(void)leftAction{
    //这里的话是通过遍历循环拿到之前在AppDelegate中声明的那个MMDrawerController属性，然后判断是否为打开状态，如果是就关闭，否就是打开(初略解释，里面还有一些条件)
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}
-(void)rightAction{
    [self.mm_drawerController toggleDrawerSide:MMDrawerSideRight animated:YES completion:nil];
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
