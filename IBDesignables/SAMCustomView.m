//
//  SAMCustomView.m
//  IBDesignables
//
//  Created by MilanPanchal on 17/05/15.
//  Copyright (c) 2015 Pantech. All rights reserved.
//

#import "SAMCustomView.h"


@implementation SAMCustomView


- (void)drawRect:(CGRect)rect {
    [self customInit];
}

- (void)setNeedsLayout {
    [super setNeedsLayout];
    [self setNeedsDisplay];
}


- (void)prepareForInterfaceBuilder {
    
    [self customInit];
}

- (void)customInit {

    self.layer.cornerRadius = self.cornerRadious;
    self.layer.borderWidth = self.borderWidth;

    if (self.cornerRadious > 0) {
        self.layer.masksToBounds = YES;        
    }

    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    
    gradient.colors = [NSArray arrayWithObjects:(id)[self.startColor CGColor],(id)[self.midColor CGColor], (id)[self.endColor CGColor], nil];
    gradient.endPoint = (self.isHorizontal) ? CGPointMake(1, 0) : CGPointMake(0, 1);
    [self.layer insertSublayer:gradient atIndex:0];

}

@end
