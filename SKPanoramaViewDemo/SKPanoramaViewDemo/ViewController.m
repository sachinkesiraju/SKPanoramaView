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
    // Do any additional setup after loading the view, typically from a nib
    [self showStandardAnimation];
    //[self showLinkedinAnimation]; //Don't uncomment without removing code from above method
}

- (void) showLinkedinAnimation
{
    SKPanoramaView *panoramaView = [[SKPanoramaView alloc] initWithFrame:self.view.frame image:[UIImage imageNamed:@"new york"]];
    panoramaView.animationSpeed = 60;
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
    panoramaView.animationSpeed = 10.0f; //Set the speed for each animation transition
    panoramaView.startPosition = SKPanoramaStartPositionLeft; //Optional: set the start position of the animation (either left or right side; default:left)
    [self.view addSubview:panoramaView];
    [panoramaView startAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
