//
//  HBTexField.m
//  HaloQuickWedding
//
//  Created by HaloBearliu on 2018/11/28.
//  Copyright © 2018年 liujidanjob@163.com. All rights reserved.
//

#import "HBTexField.h"

@implementation HBTexField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //Initialzation code
    }
    return self;
}
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    UIMenuController *menuController = [UIMenuController sharedMenuController];
    if (menuController) {
        //设置为不可用
        [UIMenuController sharedMenuController].menuVisible = NO;
    }
    return NO;
}


@end
