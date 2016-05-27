//
//  SKPanoramaView.h
//  SKPanoramaView
//
//  Created by Sachin Kesiraju on 1/5/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SKPanoramaView : UIView

@property (strong, nonatomic) UIImage *image; //Image in the panorama view
@property (nonatomic) CGFloat animationSpeed; //Duration of one image animation (greater is longer; default:10s)

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image;

- (void) startAnimating;
- (void) stopAnimating;

@end
