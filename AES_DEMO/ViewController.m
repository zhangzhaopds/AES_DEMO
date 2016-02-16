//
//  ViewController.m
//  AES_DEMO
//
//  Created by 张昭 on 16/2/16.
//  Copyright © 2016年 张昭. All rights reserved.
//

#import "ViewController.h"
#import "SecurityUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *key = @"佳佳";
    NSString *enc = [SecurityUtil encryptAESData:key];
    NSString *dec = [SecurityUtil decryptAESData:enc];
    
    NSLog(@"加密：%@", enc);
    NSLog(@"解密：%@", dec);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
