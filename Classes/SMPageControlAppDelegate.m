//
//  SMPageControlAppDelegate.m
//  SMPageControl
//
//  Created by Simon Maddox on 23/02/2010.
//  Copyright Sensible Duck Ltd 2010. All rights reserved.
//

#import "SMPageControlAppDelegate.h"
#import "SMPageControlViewController.h"

@implementation SMPageControlAppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
