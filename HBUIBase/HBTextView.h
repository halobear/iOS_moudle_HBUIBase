//
//  UIPlaceHolderTextView.h
//  Flower
//
//  Created by Halobear on 15-5-11.
//  Copyright (c) 2015年 halobear. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HBTextView : UITextView

@property (nonatomic, strong) NSString *placeholder;
@property (nonatomic, strong) UIColor *placeholderColor;

@property (nonatomic, strong) UILabel *placeHolderLabel;


-(void)textChanged:(NSNotification*)notification;

-(void)textViewlineSpacing:(HBTextView *)textView;

@end
