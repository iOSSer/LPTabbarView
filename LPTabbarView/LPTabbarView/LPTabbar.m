//
//  LPTabbar.m
//  LPTabbarView
//
//  Created by lipeng on 15/4/8.
//  Copyright (c) 2015年 lipeng. All rights reserved.
//

#import "LPTabbar.h"

@implementation LPTabbar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setTabItems:(NSArray *)tabItems
{
    _tabItems = tabItems;
    [self createTabItems];
}

- (void) createTabItems
{
    CGFloat buttonWidth = self.bounds.size.width/_tabItems.count;
    for (NSInteger i = 0; i < _tabItems.count; i ++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
        button.frame = CGRectMake(buttonWidth * i, 0, buttonWidth, self.bounds.size.height);
        button.tag = i;
        [button setTitle:_tabItems[i] forState:UIControlStateNormal];
        [button addTarget:self action:@selector(barButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
    }
}

- (IBAction)barButtonClicked:(UIButton *)sender
{
    _selectIndex = sender.tag;
    if (_buttonBlock) {
        _buttonBlock(sender);
    }
}
@end
