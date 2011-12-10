//
//  DWProgressView.h
//
//  Created by Dominic Wroblewski on 10/12/2011.
//  Copyright (c) 2011 Terracoding LTD. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DWProgressView : NSObject
{
    UIActivityIndicatorView * indicatorView;
    UIView                  * parentView;
    UIView                  * theView;
}

@property (nonatomic, strong) UIActivityIndicatorView * indicatorView;

- (DWProgressView *)initWithView:(UIView *)view;
- (void)startAnimating;
- (void)stopAnimating;
- (void)hide;
- (void)show;

@end
