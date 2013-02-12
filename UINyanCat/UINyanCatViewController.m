//
//  ABViewController.m
//  UINyanCat
//
//  Created by Adam Bell on 2012-06-12.
//  Copyright (c) 2012 Adam Bell. All rights reserved.
//

#import "UINyanCatViewController.h"

@interface UINyanCatViewController ()

@end

@implementation UINyanCatViewController
@synthesize navbar;

- (void)changeStatusBar:(NSTimer *)timer
{
    red = (red + 0.1);
    
    if (red > 1.0)
    {
        red = 0.0;
        blue += 0.1;
    }
    
    if (blue > 1.0)
    {
        blue = 0.0;
        green += 0.1;
    }
    
    if (green > 1.0)
    {
        green = 0.0;
        blue = 0.0;
        red = 0.0;
    }
    
    UIColor *tintColor = [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
    //someone sould kill this with fire
    [self.navbar setTintColor:tintColor];
    
    self.nyanCatImage.contentMode = UIViewContentModeScaleAspectFill;
    
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
    
    self.title = @"UINyanCat";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
        
    CADisplayLink *displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(changeStatusBar:)];
    [displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    
    [self.navbar setTintColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
