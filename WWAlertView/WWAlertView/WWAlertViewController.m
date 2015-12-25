//
//  WWViewController.m
//  WWAlertView
//
//  Created by XingLei on 15/12/11.
//  Copyright © 2015年 XingLei. All rights reserved.
//

#import "ControlColor.h"
#import "WWAlertViewController.h"
#import "WWButton.h"
#import "WWRect.h"
#import "WWView.h"

@interface WWAlertViewController () <UITextFieldDelegate>

@end

@implementation WWAlertViewController

- (instancetype)init {
    self = [super init];
    if (!self) {
        return nil;
    }
    self.modalPresentationStyle = UIModalPresentationCustom;
    [self.view setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.7f]];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUp];
}

- (void)setUp {
    
    CGRect backGroundViewRect = WWRectMakeWithOriginSize(CGPointMake(30, self.view.frame.size.height *0.2), CGSizeMake(self.view.frame.size.width - 30*2, 188));
    if (IPHONE_4) {
        backGroundViewRect = WWRectMakeWithOriginSize(CGPointMake(30, self.view.frame.size.height *0.15), CGSizeMake(self.view.frame.size.width - 30*2, 188));
    }
    UIView *backGroundView = [[UIView alloc]initWithFrame:backGroundViewRect];
    backGroundView.layer.cornerRadius = 10;
    backGroundView.alpha = 1;
    backGroundView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:backGroundView];
    
    CGRect lineRect = WWRectMakeWithSize(CGSizeMake(backGroundView.frame.size.width, backGroundView.frame.size.height));
    UIImageView * lineImageView = [WWView getWWViewFrame:backGroundView.frame];
    [backGroundView addSubview:lineImageView];
    
    UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton.frame = CGRectMake(lineRect.origin.x, floorf(lineRect.size.height * 0.73936), lineRect.size.width/2, lineRect.size.height - floorf(lineRect.size.height * 0.73936));
    [cancelButton setTitle:@"取消" forState:UIControlStateNormal];
    [cancelButton setTitleColor:[ControlColor colorWithHexString:@"#333333"] forState:UIControlStateNormal];
    [cancelButton addTarget:self action:@selector(clickCancelButton:) forControlEvents:UIControlEventTouchUpInside];
    [lineImageView addSubview:cancelButton];
    
    UIButton *defaultButton = [UIButton buttonWithType:UIButtonTypeCustom];
    defaultButton.frame = CGRectMake(lineRect.origin.x + lineRect.size.width/2, floorf(lineRect.size.height * 0.73936), lineRect.size.width/2, lineRect.size.height - floorf(lineRect.size.height * 0.73936));
    [defaultButton setTitle:@"提交" forState:UIControlStateNormal];
    [defaultButton setTitleColor:[ControlColor colorWithHexString:@"#ef5a50"] forState:UIControlStateNormal];
    [defaultButton addTarget:self action:@selector(clickDefaultButton:) forControlEvents:UIControlEventTouchUpInside];
    [lineImageView addSubview:defaultButton];
    
    
    _customTextField = [[WWTextField alloc]initWithFrame:CGRectMake( 15, 84, backGroundViewRect.size.width - 15*2, 40)];
    _customTextField.delegate = self;
    [lineImageView addSubview:_customTextField];
    
    WWButton *timeButton = [[WWButton alloc]init];
    timeButton.frame = CGRectMake(_customTextField.frame.size.width - (_customTextField.frame.size.width * 0.35 + 1), 1, _customTextField.frame.size.width * 0.35, _customTextField.frame.size.height-2);
    [_customTextField addSubview:timeButton];
    
    _customTextLabel = [[WWLabel alloc]initWithFrame:CGRectMake(10, 10, backGroundViewRect.size.width - 10*2, 70)];
    [lineImageView addSubview:_customTextLabel];
}

- (void)clickCancelButton:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)clickDefaultButton:(UIButton *)sender {
    if ([_customTextField.text isEqualToString:@""] || (![_customTextField.text isKindOfClass:[NSString class]])) {
//        [self showFailureHUDWithText:@"问题描述不能为空" duration:1.5];
        _submitBlock(_customTextField.text);
        return;
    }
}

#pragma mark
#pragma mark textFieldDelegate
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];    // 主要是[receiver resignFirstResponder]在哪调用就能把receiver对应的键盘往下收
    return YES;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    // string就是此时输入的那个字符 textField就是此时正在输入的那个输入框 返回YES就是可以改变输入框的值 NO相反
    if ([string isEqualToString:@"\n"]) {// 按回车可以改变
        return YES;
    }
    
    NSString * toBeString = [textField.text stringByReplacingCharactersInRange:range withString:string]; // 得到输入框的内容
    
    // 不允许输入空格
    if ([toBeString isEqualToString:@" "]) {
        return NO;
    }
    
    if (_customTextField == textField)
    {
        if ([toBeString length] > 10) {
            textField.text = [toBeString substringToIndex:20];
            return NO;
        }
    }
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
