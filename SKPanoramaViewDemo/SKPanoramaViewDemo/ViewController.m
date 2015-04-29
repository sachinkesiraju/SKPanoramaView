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

@property (strong, nonatomic) SKPanoramaView *panView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib
    //[self showLinkedinAnimation];
}

- (void) viewDidAppear:(BOOL)animated
{
    _panView= [[SKPanoramaView alloc] initWithFrame:self.view.frame image:[UIImage imageNamed:@"golden gate"]];
    _panView.animationDuration = 10.0f; //Set the duration
    [self.view addSubview:_panView];

    [_panView startAnimating];
}

- (void) viewDidDisappear:(BOOL)animated
{
    [_panView stopAnimating];
}

- (void) showLinkedinAnimation
{
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
