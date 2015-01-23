//
//  SKPanoramaView.h
//  SKPanoramaView
//
//  Created by Sachin Kesiraju on 1/5/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKPanoramaView : UIView

@property (strong, nonatomic) UIImage *image;
@property (nonatomic) CGFloat animationDuration; //Duration of one image animation (Default: 10s)

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image;

- (void) startAnimating;
- (void) stopAnimating;

@end
