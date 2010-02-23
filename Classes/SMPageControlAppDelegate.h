//
//  SMPageControlAppDelegate.h
//  SMPageControl
//
//  Created by Simon Maddox on 23/02/2010.
//  Copyright Sensible Duck Ltd 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SMPageControlViewController;

@interface SMPageControlAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    SMPageControlViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SMPageControlViewController *viewController;

@end

