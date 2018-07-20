//
//  MVP_View.h
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MVP_View : UIView
- (void)setName:(NSString *)name andIcon:(NSString *)icon;

@property (nonatomic ,copy) void(^clickViewBlock)(void);
@end
