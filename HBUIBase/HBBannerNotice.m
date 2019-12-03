//
//  HBBannerNotice.m
//  HaloQuickWedding
//
//  Created by HaloBearliu on 2019/6/6.
//  Copyright © 2019 liujidanjob@163.com. All rights reserved.
//

#import "HBBannerNotice.h"
#import <AudioToolbox/AudioToolbox.h>

#define kHeihgt 86

@implementation HBBannerNotice

+(id)bannerWith:(UIImage *)bannerImage bannerName:(NSString *)bannerName bannerContent:(NSString *)bannerContent
{
    
    //获取图片路径
     NSString *bundlePath = [[NSBundle bundleForClass:[self class]].resourcePath
                                    stringByAppendingPathComponent:@"/RefreshHeader.bundle"];
     NSBundle *resource_bundle = [NSBundle bundleWithPath:bundlePath];
     
    
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, -kHeihgt-iphonexOffvalue, kScreen_Width, kHeihgt)];
    
    UIImageView *shaowImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kScreen_Width, kHeihgt)];
    shaowImageView.image = [UIImage imageNamed:@"bannerNotice_shaow"
                         inBundle:resource_bundle
    compatibleWithTraitCollection:nil];
    shaowImageView.contentMode = UIViewContentModeScaleAspectFill;
    [view addSubview:shaowImageView];
    
    UIView *viewHidden = [[UIView alloc] initWithFrame:CGRectMake(10, 10, kScreen_Width-20, 70)];
    viewHidden.backgroundColor = [UIColor whiteColor];
    viewHidden.layer.cornerRadius = 5;
    [view addSubview:viewHidden];
    
    UIImageView*imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 13, viewHidden.height-26, viewHidden.height-26)];
    imageView.layer.cornerRadius = (viewHidden.height-26)/2;
    imageView.layer.masksToBounds = YES;
    [imageView setImage:bannerImage];
    [viewHidden addSubview:imageView];
    
    UILabel *nameLabel = [[UILabel alloc] init];
    nameLabel.frame = CGRectMake(imageView.right+10, 19, kScreen_Width-imageView.right-30, 13);
    nameLabel.textColor = kTextColor_gray;
    nameLabel.font = [UIFont systemFontOfSize:13];
    nameLabel.text = bannerName;
    [viewHidden addSubview:nameLabel];
    
    UILabel *contentLabel = [[UILabel alloc] init];
    contentLabel.frame = CGRectMake(nameLabel.left, nameLabel.bottom+8, nameLabel.width, 15);
    contentLabel.textColor = kTextColor_Black;
    contentLabel.font = [UIFont systemFontOfSize:15];
    contentLabel.text = bannerContent;
    [viewHidden addSubview:contentLabel];
    
    UILabel *timeLabel = [[UILabel alloc] init];
    timeLabel.frame = CGRectMake(viewHidden.width-50, nameLabel.top, 40, 13);
    timeLabel.textColor = kTextColor_gray;
    timeLabel.font = [UIFont systemFontOfSize:13];
    timeLabel.text = @"现在";
    [viewHidden addSubview:timeLabel];
    
    [UIView animateWithDuration:0.5 animations:^{
        view.originY = iphonexOffvalue;
    }];
    AudioServicesPlaySystemSound(1007);
    
    double delayInSeconds = 3.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [UIView animateWithDuration:0.5 animations:^{
            view.transform = CGAffineTransformMakeTranslation(0, -kHeihgt-iphonexOffvalue);
            [[UIApplication sharedApplication] setStatusBarHidden:NO];
        }];
    });
    
    return view;
    
}

@end
