//
//  ViewController.m
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>
#import "WWAlertViewController.h"
#import "CustomIOSAlertView.h"

@interface ViewController ()

@end

static NSUInteger num = 0;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 
}

- (IBAction)clickButton:(id)sender {
//    NSTimer *timer = [NSTimer timerWithTimeInterval:1 target:self selector:@selector(start) userInfo:nil repeats:false];
//    [[NSRunLoop currentRunLoop]addTimer:timer forMode:NSRunLoopCommonModes];
    [self start];
//    UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"为了您的账户安全，我们将发送验证码到您手机"
//                                                                   message:@"15100613345"
//                                                            preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
//    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"提交" style:UIAlertActionStyleDefault handler:nil];
//    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//        // 可以在这里对textfield进行定制，例如改变背景色
//        textField.frame = CGRectMake(0, 0, 20, 50);
//    }];
//    
//    [alert addAction:cancelAction];
//    [alert addAction:okAction];
//    [self presentViewController:alert animated:YES completion:nil];
    
}

- (void)start {
//    NSLog(@"第%ld次运行",(unsigned long)num++);
//    if (num == 1007) {
//        return;
//    }
    WWAlertViewController *wwAlertViewController = [[WWAlertViewController alloc]init];
    [self presentViewController:wwAlertViewController animated:YES completion:nil];
//    [self dismissViewControllerAnimated:YES completion:nil];

//        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"为了您的账户安全，我们将发送验证码到您手机"
//                                                                       message:@"15100613345"
//                                                                preferredStyle:UIAlertControllerStyleAlert];
//        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
//        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"提交" style:UIAlertActionStyleDefault handler:nil];
//        [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
//            // 可以在这里对textfield进行定制，例如改变背景色
//            textField.frame = CGRectMake(0, 0, 20, 50);
//        }];
//    
//        [alert addAction:cancelAction];
//        [alert addAction:okAction];
//        [self presentViewController:alert animated:YES completion:nil];
//    
//        [self dismissViewControllerAnimated:YES completion:nil];
    
//    CustomIOSAlertView *alert = [[CustomIOSAlertView alloc]init];
//    UIView *view = [[[NSBundle mainBundle]loadNibNamed:@"MyView" owner:nil options:nil]lastObject];
//    alert.containerView = view;
//    
//    [alert show];
//    [alert close];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
