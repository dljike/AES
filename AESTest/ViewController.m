//
//  ViewController.m
//  AESTest
//
//  Created by 杜甲 on 14-9-22.
//  Copyright (c) 2014年 杜甲. All rights reserved.
//

#import "ViewController.h"
#include "NSData+AES256.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString* message = @"神奇的AES";
    
    NSString* str = [NSData AES256EncryptWithPlainText:message];
    NSString* res = [NSData AES256DecryptWithCiphertext:str];
    NSLog(@"%@",str);
    NSLog(@"%@",res);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
