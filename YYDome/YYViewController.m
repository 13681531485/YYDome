//
//  YYViewController.m
//  YYDome
//
//  Created by Game Mac on 15/10/26.
//  Copyright © 2015年 yangyang. All rights reserved.
//

#import "YYViewController.h"
#import "AFNetworking.h"

@interface YYViewController ()

@end

@implementation YYViewController
{
    NSMutableAttributedString *hogan;
    NSMutableAttributedString *hogan1;
    NSString *name;
    NSString *age;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
        self.view.backgroundColor = [UIColor purpleColor];
    // Do any additional setup after loading the view, typically from a nib.
    //    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    //     btn.frame = CGRectMake(100, 100, 100, 100);
    //    [btn addTarget:self action:@selector(on) forControlEvents:UIControlEventTouchUpInside];
    //
    //    [self.view addSubview:btn];
    [self anayze];
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(on) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
   
}

- (void)on
{
    NSString *ages = [NSString stringWithFormat:@"我的Demo_%@",age];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:name message:ages preferredStyle:UIAlertControllerStyleAlert];
    //hogan = [[NSMutableAttributedString alloc] initWithString:name];
    
   // hogan1= [[NSMutableAttributedString alloc] initWithString:ages];
//    [hogan addAttribute:NSFontAttributeName
//                  value:[UIFont systemFontOfSize:17.0]
//                  range:NSMakeRange(5, hogan.length-5)];
//    [hogan addAttribute:NSForegroundColorAttributeName
//                  value:[UIColor redColor]
//                  range:NSMakeRange(0, 5)];
//    [hogan addAttribute:NSForegroundColorAttributeName
//                  value:[UIColor orangeColor]
//                  range:NSMakeRange(5, 10)];
//    [hogan addAttribute:NSForegroundColorAttributeName
//                  value:[UIColor yellowColor]
//                  range:NSMakeRange(10, 15)];
//    [hogan addAttribute:NSForegroundColorAttributeName
//                  value:[UIColor blackColor]
//                  range:NSMakeRange(15,  hogan.length-15)];
    
    
    //[alertController setValue:hogan forKey:@"attributedMessage"];
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
//    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        textField.placeholder = @"用户名";
//        textField.secureTextEntry = YES;
//    }];
    
    //    // 取出文本
    //    UITextField *text = alertController.textFields.firstObject;
    //    UIAlertAction *action = alertController.actions.firstObject;
    
    // 将UIAlertController模态出来 相当于UIAlertView show 的方法
    [self presentViewController:alertController animated:YES completion:nil];
    
}


- (void)anayze
{
    AFHTTPRequestOperationManager * manger = [AFHTTPRequestOperationManager manager];
    manger.responseSerializer = [AFHTTPResponseSerializer serializer];
    NSString *url =@"http://42.121.13.106:8086/HealthTreatment/api/point/tblAdultPoint!getAdultPointList2.do?is_traditional=0";
    [manger GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        //NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
      NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableContainers error:nil];
        NSArray *array = dict[@"data"];
        
        for (NSDictionary *dic in array) {
            NSArray *NewArray = dic[@"adultPoint"];
            NSDictionary *smdict = NewArray[1];
            name = smdict[@"adultPointName"];
            age = smdict[@"id"];
            
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
    
}
@end
