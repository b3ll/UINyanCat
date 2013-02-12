//
//  ABViewController.h
//  UINyanCat
//
//  Created by Adam Bell on 2012-06-12.
//  Copyright (c) 2012 Adam Bell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface UINyanCatViewController : UIViewController
{
    CGFloat red;
    CGFloat blue;
    CGFloat green;
}

@property (weak, nonatomic) IBOutlet UINavigationBar *navbar;
@property (weak, nonatomic) IBOutlet UIImageView *nyanCatImage;

@end
