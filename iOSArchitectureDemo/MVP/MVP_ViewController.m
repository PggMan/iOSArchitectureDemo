//
//  MVP_ViewController.m
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import "MVP_ViewController.h"
#import "PGMyPresenter.h"
@interface MVP_ViewController ()

@property (nonatomic ,strong) PGMyPresenter *presenter;

@end

@implementation MVP_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

   _presenter = [[PGMyPresenter alloc] initWithController:self];
 }



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSDictionary *dic = @{
                          @"name": @"阿三",
                          @"icon": @"dad.png"
                          };
    
    [self.presenter reloadData:dic];
}

@end
