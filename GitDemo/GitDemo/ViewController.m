//
//  ViewController.m
//  GitDemo
//
//  Created by mac on 17/2/15.
//  Copyright © 2017年 tc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(60,100, 60, 30);
    btn.center = CGPointMake(320/2.0, 568/2.0);
    btn.tag = 400;
    btn.layer.cornerRadius = 8;
    btn.layer.masksToBounds = YES;
    btn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    btn.layer.borderWidth = 1.0;
    btn.backgroundColor = [[UIColor purpleColor] colorWithAlphaComponent:0.7];
    [btn setTitle:@"确定" forState:UIControlStateNormal];
    [btn setTitle:@"取消" forState:UIControlStateSelected];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)btnAction:(UIButton *)btn {
    btn.selected = !btn.selected;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
