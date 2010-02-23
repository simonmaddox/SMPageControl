//
//  SMPageControlViewController.h
//  SMPageControl
//
//  Created by Simon Maddox on 23/02/2010.
//  Copyright Sensible Duck Ltd 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "SMPageControl.h"

@interface SMPageControlViewController : UIViewController <UIScrollViewDelegate> {
	SMPageControl *pageControl;
	
	UIScrollView *scrollView;
}

@property (nonatomic, retain) IBOutlet SMPageControl *pageControl;

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;

@end

