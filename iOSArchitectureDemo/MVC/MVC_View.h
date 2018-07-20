//
//  MVC_View.h
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MVC_View : UIView


@property (weak, nonatomic) UIImageView *iconView;
@property (weak, nonatomic) UILabel *nameLabel;


@property (nonatomic ,copy) void(^clickViewBlock)(void);
@end
