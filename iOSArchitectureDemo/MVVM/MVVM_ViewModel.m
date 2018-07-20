//
//  MVVM_ViewModel.m
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import "MVVM_ViewModel.h"
#import "MVVM_View.h"
@interface MVVM_ViewModel()
@property (weak, nonatomic) UIViewController *controller;
@property (copy, nonatomic) NSString *name;
@property (copy, nonatomic) NSString *image;
@end

@implementation MVVM_ViewModel

- (instancetype)initWithController:(UIViewController *)controller
{
    if (self = [super init]) {
        self.controller = controller;
        
        
        [controller.view addSubview:({
      
            MVVM_View *appView = [[MVVM_View alloc] init];
            appView.frame = CGRectMake(100, 100, 100, 150);
            
            // 互相拥有 view 与 viewModel
            appView.viewModel = self;
            
            appView.clickViewBlock = ^{
                NSLog(@"viewModel 监听了 appView 的点击");
            };
            appView;
        })];
    }
    
    return self;
}

- (void)reloadData:(MVVM_Model *)model{
    
    self.name = model.name;
    self.image = model.icon;
}

@end
