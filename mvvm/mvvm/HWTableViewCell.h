//
//  HWTableViewCell.h
//  mvvm
//
//  Created by Peter Zhu on 2017/6/7.
//  Copyright © 2017年 Peter Zhu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HWCellModel;

@interface HWTableViewCell : UITableViewCell

@property (nonatomic, weak) UILabel *lable;
@property (nonatomic, strong) HWCellModel *model;

+ (instancetype)cellWIthTableView:(UITableView *)tableView;

@end

