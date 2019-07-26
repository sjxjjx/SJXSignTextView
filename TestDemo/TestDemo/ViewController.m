//
//  ViewController.m
//  TestDemo
//
//  Created by Sjx on 2019/7/26.
//  Copyright © 2019 zhl. All rights reserved.
//

#import "ViewController.h"
#import "SJXSignTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self demo_right];
    
    [self demo_left];
    
    [self demo_all];
}

- (void)demo_right {
    UIView *v = [[UIView alloc] init];
    v.frame = CGRectMake(50, 100, 100, 100);
    v.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:v];
    
    SJXSignTextView *testV = [[SJXSignTextView alloc] init];
    testV.frame = CGRectMake(60, 0, 40, 40);
    testV.text = @"测试文字";
    [v addSubview:testV];
}

- (void)demo_left {
    UIView *v = [[UIView alloc] init];
    v.frame = CGRectMake(200, 100, 100, 100);
    v.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:v];
    
    SJXSignTextView *testV = [[SJXSignTextView alloc] init];
    testV.frame = CGRectMake(0, 0, 40, 40);
    testV.directionType = TextDirectionTypeLeft;
    testV.text = @"测试文字";
    testV.textColor = [UIColor whiteColor];
    testV.bgColor = [UIColor blueColor];
    testV.textFont = 8;
    [v addSubview:testV];
}

- (void)demo_all {
    UIView *v = [[UIView alloc] init];
    v.frame = CGRectMake(100, 300, 100, 100);
    v.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:v];
    
    SJXSignTextView *testV = [[SJXSignTextView alloc] init];
    testV.frame = CGRectMake(0, 0, 40, 40);
    testV.directionType = TextDirectionTypeLeft;
    testV.text = @"测试文字";
    testV.textColor = [UIColor redColor];
    testV.bgColor = [UIColor whiteColor];
    testV.textFont = 8;
    [v addSubview:testV];
    
    SJXSignTextView *testV2 = [[SJXSignTextView alloc] init];
    testV2.frame = CGRectMake(60, 0, 40, 40);
    testV2.directionType = TextDirectionTypeRight;
    testV2.text = @"测试文字";
    testV2.textColor = [UIColor blackColor];
    testV2.bgColor = [UIColor greenColor];
    testV2.textFont = 8;
    [v addSubview:testV2];
}

@end
