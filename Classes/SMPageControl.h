//
//  SMPageControl.h
//  SMPageControl
//
//  Created by Simon Maddox on 23/02/2010.
//  Copyright 2010 Sensible Duck Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SMPageControl : UIPageControl {
	NSInteger currentPage;
	NSInteger numberOfPages;
	BOOL hidesForSinglePage;
	
	UIColor *inactivePageColor;
	UIColor *activePageColor;
}

@property (nonatomic) NSInteger currentPage;
@property (nonatomic) NSInteger numberOfPages;
@property (nonatomic) BOOL hidesForSinglePage;

@property (nonatomic, retain) UIColor *inactivePageColor;
@property (nonatomic, retain) UIColor *activePageColor;

@end
