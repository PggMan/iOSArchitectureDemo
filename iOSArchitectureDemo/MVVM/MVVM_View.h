//
//  MVVM_View.h
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVM_ViewModel.h"
@interface MVVM_View : UIView

@property (weak, nonatomic) MVVM_ViewModel *viewModel;

@property (nonatomic ,copy) void(^clickViewBlock)(void);
@end
