//
//  MVC_ViewController.m
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import "MVC_ViewController.h"
#import "MVC_View.h"
#import "MVC_Model.h"
@interface MVC_ViewController ()

@property (nonatomic ,weak) MVC_View *subView;
@property (nonatomic ,strong) MVC_Model *subModel;
@end

@implementation MVC_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MVC_View *subView = [[MVC_View alloc] init];
    subView.frame = CGRectMake(100, 100, 100, 100);
    
    subView.nameLabel.text = self.subModel.name;
    subView.iconView.image = [UIImage imageNamed:self.subModel.icon];
    
    [self.view addSubview:subView];
    
    _subView = subView;
    
}

- (MVC_Model *)subModel{
    
    if (!_subModel) {
        _subModel = [[MVC_Model alloc] init];
        
        _subModel.icon = @"dadi.png";
        _subModel.name = @"阿三";
    }
    
    
    return _subModel;
}

@end
