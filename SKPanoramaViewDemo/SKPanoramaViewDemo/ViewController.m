//
//  ViewController.m
//  SKPanoramaViewDemo
//
//  Created by Sachin Kesiraju on 1/22/15.
//  Copyright (c) 2015 Sachin Kesiraju. All rights reserved.
//

#import "ViewController.h"
#import "SKPanoramaView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self showStandardAnimation];
    // [self showLinkedinAnimation]; //uncomment standardAnimation before calling this to avoid to instances of panorama view running at once.
}

- (void) showLinkedinAnimation
{
    //demo adding custom views on top of panorama view
    SKPanoramaView *panoramaView = [[SKPanoramaView alloc] initWithFrame:self.view.frame image:[UIImage imageNamed:@"new york"]];
    panoramaView.animationDuration = 60;
    [self.view addSubview:panoramaView];
    [panoramaView startAnimating];
    UIView *overlayView = [[UIView alloc] initWithFrame:self.view.frame];
    overlayView.backgroundColor = [UIColor blackColor];
    overlayView.alpha = 0.4;
    [panoramaView addSubview:overlayView];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"linkedin"]];
    imageView.center = panoramaView.center;
    [panoramaView addSubview:imageView];
}

- (void) showStandardAnimation
{
    //standard demo
    SKPanoramaView *panoramaView = [[SKPanoramaView alloc] initWithFrame:self.view.frame image:[UIImage imageNamed:@"golden gate"]];
    panoramaView.animationDuration = 10.0f; //Set the duration
    [self.view addSubview:panoramaView];
    [panoramaView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
