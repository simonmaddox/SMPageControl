//
//  SMPageControlViewController.m
//  SMPageControl
//
//  Created by Simon Maddox on 23/02/2010.
//  Copyright Sensible Duck Ltd 2010. All rights reserved.
//

#import "SMPageControlViewController.h"

@implementation SMPageControlViewController

@synthesize pageControl, scrollView;

- (void) viewDidLoad
{
	NSInteger numberOfPages = 5;
	
	// Populate the UIScrollView so that we have something to look at
	UIImage *redBox = [UIImage imageNamed:@"redBox.png"];
	
	for (NSInteger i = 0; i < numberOfPages; i++){
		UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(scrollView.frame.size.width * i, 0, redBox.size.width, redBox.size.height)];
		[imageView setImage:redBox];
		[scrollView addSubview:imageView];
		[imageView release];
	}
	
	[scrollView setContentSize:CGSizeMake(scrollView.frame.size.width * numberOfPages, scrollView.frame.size.height)];
	
	
	// let's make the SMPageControl look pretty
	[pageControl setNumberOfPages:numberOfPages];
	[pageControl setActivePageColor:[UIColor redColor]];
	[pageControl setInactivePageColor:[UIColor blueColor]];
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
	// Change the page
    CGFloat pageWidth = scrollView.frame.size.width;
    int page = floor((scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
	[pageControl setCurrentPage:page];
}

- (void)dealloc
{
	[pageControl release];
	[scrollView release];
	
    [super dealloc];
}

@end
