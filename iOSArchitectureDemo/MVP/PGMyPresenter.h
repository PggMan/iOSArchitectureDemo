//
//  PGMyPresenter.h
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PGMyPresenter : NSObject

/**
 初始化

 @param controller 控制器
 @return 返回presenter(主持人)
 */
- (instancetype)initWithController:(UIViewController *)controller;

/**
 刷新控件数据
 */
- (void)reloadData:(NSDictionary *)dic;


@end
