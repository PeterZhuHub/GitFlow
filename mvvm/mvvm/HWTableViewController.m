//
//  ViewController.m
//  mvvm
//
//  Created by Peter Zhu on 2017/6/7.
//  Copyright © 2017年 Peter Zhu. All rights reserved.
//

#import "HWTableViewController.h"
#import "HWHeaderView.h"
#import "HWTableViewCell.h"
#import "HWCellViewModel.h"

@interface HWTableViewController ()

@property (nonatomic, strong) HWCellViewModel *viewModel;

@end

@implementation HWTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //创建头部视图
    self.tableView.tableHeaderView = [[HWHeaderView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 100)];

    self.viewModel = [[HWCellViewModel alloc] init];

    NSLog(@"develop2");

    NSLog(@"develop3");

    NSLog(@"bug1修复");

    NSLog(@"develop4");

    NSLog(@"develop5");

    NSLog(@"feature1");

}

#pragma mark - Table view data source
//组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.viewModel numberOfSections];
}

//组中行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.viewModel numberOfItemsInSection:section];
}

//cell内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.viewModel tableView:tableView cellForRowAtIndexPath:indexPath];
}

//点击事件
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.viewModel tableView:tableView didSelectRowAtIndexPath:indexPath];
}

//设置行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.viewModel tableView:tableView heightForRowAtIndexPath:indexPath];
}

//设置头部标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [self.viewModel titleForHeaderInSection:section];
}

//设置尾部标题
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return [self.viewModel titleForFooterInSection:section];
}

@end
