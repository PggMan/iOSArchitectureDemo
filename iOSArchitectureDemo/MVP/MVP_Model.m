//
//  MVP_Model.m
//  iOSArchitectureDemo
//
//  Created by 印度阿三 on 2018/7/19.
//  Copyright © 2018年 印度阿三. All rights reserved.
//

#import "MVP_Model.h"

@implementation MVP_Model
- (instancetype)initWithDic:(NSDictionary *)dic{
    MVP_Model *model = [[MVP_Model alloc] init];
    model.name = dic[@"name"];
    model.icon = dic[@"icon"];
    
    return model;
}
@end
