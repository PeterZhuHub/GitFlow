//
//  ViewController.m
//  mvvm
//
//  Created by Peter Zhu on 2017/6/7.
//  Copyright © 2017年 Peter Zhu. All rights reserved.
//

#import "HWHeaderView.h"

@implementation HWHeaderView

//重写init方法
- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        //创建一个标签作为头部视图
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 100)];
        label.text = @"这是头部视图";
        label.textAlignment = NSTextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        label.backgroundColor = [UIColor grayColor];
        [self addSubview:label];
    }

    return self;
}

@end
