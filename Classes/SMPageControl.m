//
//  SMPageControl.m
//  SMPageControl
//
//  Created by Simon Maddox on 23/02/2010.
//  Copyright 2010 Sensible Duck Ltd. All rights reserved.
//

#import "SMPageControl.h"

@implementation SMPageControl

@synthesize numberOfPages, hidesForSinglePage, inactivePageColor, activePageColor;
@dynamic currentPage;

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        hidesForSinglePage = NO;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
	
	if (hidesForSinglePage == NO || [self numberOfPages] > 1){
		if (activePageColor == nil){
			activePageColor = [UIColor blackColor];
		}
		
		if (inactivePageColor == nil){
			inactivePageColor = [UIColor grayColor];
		}
		
		CGContextRef context = UIGraphicsGetCurrentContext();
		
		float dotSize = self.frame.size.height / 6;
		
		float dotsWidth = (dotSize * [self numberOfPages]) + (([self numberOfPages] - 1) * 10);
		
		float offset = (self.frame.size.width - dotsWidth) / 2;
		
		for (NSInteger i = 0; i < [self numberOfPages]; i++){
			if (i == [self currentPage]){
				CGContextSetFillColorWithColor(context, [activePageColor CGColor]);
			} else {
				CGContextSetFillColorWithColor(context, [inactivePageColor CGColor]);
			}
			
			CGContextFillEllipseInRect(context, CGRectMake(offset + (dotSize + 10) * i, (self.frame.size.height / 2) - (dotSize / 2), dotSize, dotSize));
		}
	}
}

- (NSInteger) currentPage
{
	return currentPage;
}

- (void) setCurrentPage:(NSInteger)page {
	currentPage = page;
	[self setNeedsDisplay];
}

- (void)dealloc {
    [super dealloc];
}


@end
