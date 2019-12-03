//
//  HBCountButton.h
//  WeddingToB
//
//  Created by monkey on 16/3/10.
//  Copyright © 2016年 ymonke. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HBCountButton;

typedef NSString* (^DidChangeBlock)  (HBCountButton *countDownButton,int second);
typedef NSString* (^DidFinishedBlock)(HBCountButton *countDownButton,int second);

typedef void (^TouchedDownBlock)(HBCountButton *countDownButton,NSInteger tag);


@interface HBCountButton : UIButton
{
    int _second;
    int _totalSecond;
    
    NSTimer *_timer;
    NSDate *_startDate;
    
    DidChangeBlock _didChangeBlock;
    DidFinishedBlock _didFinishedBlock;
    TouchedDownBlock _touchedDownBlock;
}

-(void)addToucheHandler:(TouchedDownBlock)touchHandler;
-(void)didChange:(DidChangeBlock)didChangeBlock;
-(void)didFinished:(DidFinishedBlock)didFinishedBlock;
-(void)startWithSecond:(int)second;
- (void)stop;

@end
