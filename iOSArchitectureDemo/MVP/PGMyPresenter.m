//
//  PGMyPresenter.m
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import "PGMyPresenter.h"
#import "MVP_View.h"
#import "MVP_Model.h"
@interface PGMyPresenter()
@property (weak, nonatomic) UIViewController *controller;
@property (nonatomic ,strong) MVP_View *appView;
@end
@implementation PGMyPresenter

// 初始化
- (instancetype)initWithController:(UIViewController *)controller
{
    if (self = [super init]) {
        self.controller = controller;
        
        
        [controller.view addSubview:({
            // 创建View
            MVP_View *appView = [[MVP_View alloc] init];
            appView.frame = CGRectMake(100, 100, 100, 150);
            _appView = appView;
            
            appView;
        })];
    }
    
    return self;
}

// 刷新数据
- (void)reloadData:(NSDictionary *)dic{
    
    MVP_Model *model = [[MVP_Model alloc] initWithDic:dic];
    
    [self.appView setName:model.name andIcon:model.icon];
}

@end
