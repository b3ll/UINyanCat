//
//  ABAppDelegate.h
//  UINyanCat
//
//  Created by Adam Bell on 2012-06-12.
//  Copyright (c) 2012 Adam Bell. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UINyanCatViewController;

@interface UINyanCatAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UINyanCatViewController *viewController;

@end
