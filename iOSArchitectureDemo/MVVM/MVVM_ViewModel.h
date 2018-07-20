//
//  MVVM_ViewModel.h
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVM_Model.h"
@interface MVVM_ViewModel : NSObject

- (instancetype)initWithController:(UIViewController *)controller;
/**
 刷新控件数据
 */
- (void)reloadData:(MVVM_Model *)model;
@end
