//
//  ViewController.m
//  Ex01
//
//  Created by Yu on 2014/12/12.
//  Copyright (c) 2014年 Yu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

void display2()
{
    NSLog (@"2 times.");
}

int always2()
{
    return 2;
    
}

int twice(int value) {
    return 2 * value;
}

int multiple(int value1,int value2)
{
    return value1 * value2;
}

float iTax(int price, float tax)
{
    return price * ((float) 1.00 + tax);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    int age = 18;
    if(age >= 20){
        NSLog(@"成人");
    } else {
        NSLog (@"未成年");}
    
    
    for(int i =1;i <= 10;i++){
        NSLog(@"%d",i);
    }
    
    int era = 1;
    switch (era) {
        case 0:
            NSLog(@"昭和");
            break;
        case 1:
            NSLog(@"平成");
            break;
        case 2:
            NSLog(@"年号 error!");
            break;
    }
    
    for (int j = 1; j<= 9; j++){
        for (int i = 1; i <= 9; i++){
            NSLog(@"%d × %d = %d", j, i, i * j);
        }
    }
    
    display2();
    int answer = always2();
    int answerTwice = twice(5);
    int answerMulti = multiple(3, 2);
    NSLog(@"answer=%d",answer);
    NSLog(@"answer=%d",answerTwice);
    NSLog(@"answer=%d",answerMulti);
    
    int tanka = 300000000;
    float zei = 0.08;
    float zeikomi = iTax(tanka, zei);
    NSLog(@"税込み金額は%.0f円です。(消費税%.0f%%)", zeikomi, zei * 100.0);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
