//
//  ViewController.m
//  mvvm
//
//  Created by Peter Zhu on 2017/6/7.
//  Copyright © 2017年 Peter Zhu. All rights reserved.
//

#import "HWCellModel.h"

@implementation HWCellModel

- (id)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (id)HWInfoWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

@end
