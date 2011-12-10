//
//  DWProgressView.m
//
//  Created by Dominic Wroblewski on 10/12/2011.
//  Copyright (c) 2011 Terracoding LTD. All rights reserved.
//

#import "DWProgressView.h"
#import <QuartzCore/QuartzCore.h>

@implementation DWProgressView

@synthesize indicatorView = _indicatorView;

- (DWProgressView *)initWithView:(UIView *)view
{
    if (self = [super init]) {
        
        theView = [[UIView alloc] init];
        theView.frame = CGRectMake(view.bounds.origin.x, view.bounds.origin.y, 100, 100);
        theView.center = CGPointMake(ceil(view.bounds.size.width/2), ceil(view.bounds.size.height/2));
        [theView setBackgroundColor:[UIColor blackColor]];
        [theView setAlpha:0.8f];
        
        CALayer * layer = [theView layer];
        [layer setMasksToBounds:YES];
        [layer setCornerRadius:10.0f];
        
        _indicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        CGRect frame = theView.frame;
        _indicatorView.center = CGPointMake(ceil(frame.size.width/2), ceil(frame.size.height/2));
        [theView addSubview:self.indicatorView];
        [theView setUserInteractionEnabled:NO];
        [view addSubview:theView];
        parentView = view;
    }
    return self;
}

- (void)startAnimating
{
    [_indicatorView startAnimating];
}

- (void)stopAnimating
{
    [_indicatorView stopAnimating];
}

- (void)hide
{
    [theView removeFromSuperview];
}

- (void)show
{
    [parentView addSubview:theView];
}

@end
