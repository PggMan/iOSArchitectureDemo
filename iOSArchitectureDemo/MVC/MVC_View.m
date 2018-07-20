//
//  MVC_View.m
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import "MVC_View.h"

@interface MVC_View()

@end

@implementation MVC_View
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIImageView *iconView = [[UIImageView alloc] init];
        iconView.frame = CGRectMake(0, 0, 100, 100);
        [self addSubview:iconView];
        _iconView = iconView;
        
        UILabel *nameLabel = [[UILabel alloc] init];
        nameLabel.frame = CGRectMake(0, 100, 100, 30);
        nameLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:nameLabel];
        _nameLabel = nameLabel;
    }
    return self;
}

- (void)setName:(NSString *)name andImage:(NSString *)image
{
    _iconView.image = [UIImage imageNamed:image];
    _nameLabel.text = name;
}

// 交互事件
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    !self.clickViewBlock?:self.clickViewBlock();
}


@end
