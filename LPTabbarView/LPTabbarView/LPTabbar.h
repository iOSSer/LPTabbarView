//
//  LPTabbar.h
//  LPTabbarView
//
//  Created by lipeng on 15/4/8.
//  Copyright (c) 2015年 lipeng. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^ButtonBlock)(UIButton *button);

@interface LPTabbar : UITabBar

@property (nonatomic, strong) UIImage *backgroundImage;

//@property (nonatomic, strong) NSArray *items;

@property (nonatomic, strong) NSArray *tabItems;

@property (nonatomic, assign) ButtonBlock buttonBlock;

@property (nonatomic, assign) NSInteger selectIndex;
@end
