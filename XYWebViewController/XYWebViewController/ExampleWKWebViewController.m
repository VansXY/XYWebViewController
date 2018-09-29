//
//  ExampleWKWebViewController.m
//  XYWebViewController
//
//  Created by 肖扬 on 2018/9/29.
//  Copyright © 2018年 肖扬. All rights reserved.
//

#import "ExampleWKWebViewController.h"

@interface ExampleWKWebViewController ()

@end

@implementation ExampleWKWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /// 注册的方法名
    [self registJavascriptBridge:@"" handler:^(id data, WVJBResponseCallback responseCallback) {
        NSLog(@"%@",data);
    }];
    
}

/// 加载webView
- (void)loadWebPage {
    NSMutableURLRequest *urlRequest = [[NSMutableURLRequest alloc] init];
    [urlRequest setURL:[NSURL URLWithString:@"https://m.hoomxb.com/about/company"]];
    [self.webView loadRequest:urlRequest];
}


@end
