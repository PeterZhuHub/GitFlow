//
//  HWCellModel.h
//  mvvm
//
//  Created by Peter Zhu on 2017/6/7.
//  Copyright © 2017年 Peter Zhu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HWCellModel : NSObject

@property (nonatomic, copy) NSString *image;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *subTitle;

- (id)initWithDictionary:(NSDictionary *)dict;
+ (id)HWInfoWithDictionary:(NSDictionary *)dict;

@end
