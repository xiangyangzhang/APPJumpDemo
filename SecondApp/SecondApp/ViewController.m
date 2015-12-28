//
//  ViewController.m
//  SecondApp
//
//  Created by LZXuan on 15-8-4.
//  Copyright (c) 2015年 轩哥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClick:(id)sender {
    //调用First
    NSString *url = [NSString stringWithFormat:@"LZXFirstAppTest://%@",self.textField.text];
    //转码
    url = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:url]]) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    }
}
@end











