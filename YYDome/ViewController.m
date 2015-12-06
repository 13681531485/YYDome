//
//  ViewController.m
//  YYDome
//
//  Created by Game Mac on 15/10/26.
//  Copyright © 2015年 yangyang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
//     btn.frame = CGRectMake(100, 100, 100, 100);
//    [btn addTarget:self action:@selector(on) forControlEvents:UIControlEventTouchUpInside];
//   
//    [self.view addSubview:btn];
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(on) forControlEvents:UIControlEventTouchUpInside];
    int a  = 10;
    int b  = 5;
    [self.view addSubview:btn];
}

- (void)on
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"我的Demo" message:@"我来了" preferredStyle:UIAlertControllerStyleAlert];
    //[self presentViewController:alert animated:YES completion:nil];
    //UIAlertAction *Action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertAction handler:nil];
    // 创建按钮
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:(UIAlertActionStyleDefault) handler:^(UIAlertAction *action) {
        
    }];
    // 创建按钮
    // 注意取消按钮只能添加一个
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:(UIAlertActionStyleCancel) handler:^(UIAlertAction *action) {
        // 点击按钮后的方法直接在这里面写
        //[self dismissViewControllerAnimated:YES completion:nil];
    }];
    
    //    // 创建警告按钮
    //    UIAlertAction *structlAction = [UIAlertAction actionWithTitle:@"警告" style:(UIAlertActionStyleDestructive) handler:^(UIAlertAction *action) {
    //        NSLog(@"注意学习");
    //    }];
    //
    // 添加按钮 将按钮添加到UIAlertController对象上
    [alertController addAction:okAction];
    [alertController addAction:cancelAction];
    //[alertController addAction:structlAction];
    
    // 只有在alert情况下才可以添加文本框
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        textField.placeholder = @"用户名";
        textField.secureTextEntry = YES;
    }];
    
    //    // 取出文本
    //    UITextField *text = alertController.textFields.firstObject;
    //    UIAlertAction *action = alertController.actions.firstObject;
    
    // 将UIAlertController模态出来 相当于UIAlertView show 的方法
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
