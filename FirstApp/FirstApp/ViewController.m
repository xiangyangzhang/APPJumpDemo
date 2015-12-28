//
//  ViewController.m
//  FirstApp
//
//  Created by XYZ on 15-8-4.
//  Copyright (c) 2015年 XYZ. All rights reserved.
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
//点击之后 进行 app跳转
- (IBAction)btnClick:(id)sender {
    /*
     两个app 之间的相互跳转 需要知道对方的URL Scheme
     //比如系统的app  电话 tel  短信 sms  邮箱 mailto
     如果调用 自己的app  那么必须要设置  URL Scheme
     如果 第一个app 跳转到 第二个 那么 第一个必须要知道第二个的url scheme
     第二个app 必须要设置  url scheme
     第一个app 可以通过 [[UIApplication sharedApplication] openURL:url]
     调用
     //url组成  协议://主机?参数拼接
     */
    NSString *url = [NSString stringWithFormat:@"LZXSecondAppTest://www.lzx.com?a=123&b=%@",self.textField.text];
    //url 中 有可能 包含中文等非法字符 要转码 ->中文 会转化为 带%的码
    url = [url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:url]]) {
        //检测 是否可以跳转
        //openurl 进行跳转
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
    }
    
    
}
@end









