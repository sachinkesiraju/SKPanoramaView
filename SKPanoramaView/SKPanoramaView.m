//
//  SKPanoramaView.m
//  SKPanoramaView
//
//  Created by Sachin Kesiraju on 1/5/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import "SKPanoramaView.h"

static const CGFloat SKRotationMinimumTreshold = 0.1f;
static const CGFloat SKAnimationUpdateInterval = 1 / 100;
static const CGFloat SKPanoramaRotationFactor = 4.0f;

@interface SKPanoramaView ()

@property (nonatomic, assign) CGRect viewFrame;

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;

@property (nonatomic, assign) CGFloat motionRate;
@property (nonatomic, assign) NSInteger minimumXOffset;
@property (nonatomic, assign) NSInteger maximumXOffset;

@property (strong, nonatomic) NSTimer *timer;

@end

@implementation SKPanoramaView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _viewFrame = CGRectMake(0.0, 0.0, CGRectGetWidth(frame), CGRectGetHeight(frame));
        [self commonInit];
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame image:(UIImage *)image
{
    self = [self initWithFrame:frame];
    if (self) {
        [self setImage:image];
    }
    return self;
}

- (void)commonInit
{
    _scrollView = [[UIScrollView alloc] initWithFrame:_viewFrame];
    [_scrollView setUserInteractionEnabled:NO];
    [_scrollView setBounces:NO];
    [_scrollView setContentSize:CGSizeZero];
    [self addSubview:_scrollView];
    
    _imageView = [[UIImageView alloc] initWithFrame:_viewFrame];
    [_imageView setBackgroundColor:[UIColor blackColor]];
    [_scrollView addSubview:_imageView];
    
    _minimumXOffset = 0;
    
    //[self startAnimating];
}

#pragma mark - Setters

- (void)setImage:(UIImage *)image
{
    _image = image;
    
    CGFloat width = _viewFrame.size.height / _image.size.height * _image.size.width;
    [_imageView setFrame:CGRectMake(0, 0, width, _viewFrame.size.height)];
    [_imageView setBackgroundColor:[UIColor blackColor]];
    [_imageView setImage:_image];
    
    _scrollView.contentSize = CGSizeMake(_imageView.frame.size.width, _scrollView.frame.size.height);
    _scrollView.contentOffset = CGPointMake((_scrollView.contentSize.width - _scrollView.frame.size.width), 0);
    
    _motionRate = _image.size.width / _viewFrame.size.width * SKPanoramaRotationFactor;
}

#pragma mark - Animation

- (void)startAnimating
{
    if(!_animationDuration)
    {
        _animationDuration = 10.0f; //Default
    }
    
    _timer = [NSTimer timerWithTimeInterval:SKAnimationUpdateInterval target:self selector:@selector(monitor) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
}

- (void) monitor
{
    CGFloat rotationRate = 0.3;
    if (fabs(rotationRate) >= SKRotationMinimumTreshold) {
        CGFloat offsetX = _scrollView.contentOffset.x - rotationRate * _motionRate;
        if (offsetX > _maximumXOffset) {
            offsetX = _maximumXOffset;
        } else if (offsetX < _minimumXOffset) {
            offsetX = _minimumXOffset;
        }
        [UIView animateWithDuration:self.animationDuration
                              delay:0.0f
                            options:UIViewAnimationOptionRepeat| UIViewAnimationOptionAutoreverse
                         animations:^{
                             [_scrollView setContentOffset:CGPointMake(offsetX, 0) animated:NO];
                         }
                         completion:nil];
    }
}

- (void) stopAnimating
{
    [_timer invalidate];
}

@end