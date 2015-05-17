//
//  SAMCustomView.m
//  IBDesignables
//
//  Created by MilanPanchal on 17/05/15.
//  Copyright (c) 2015 Pantech. All rights reserved.
//

#import "SAMCustomView.h"

@interface SAMCustomView ()

@property (nonatomic) IBInspectable UIColor *startColor;
@property (nonatomic) IBInspectable UIColor *midColor;
@property (nonatomic) IBInspectable UIColor *endColor;

@end

@implementation SAMCustomView


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
        self.startColor     = [UIColor redColor];
        self.midColor       = [UIColor greenColor];
        self.endColor       = [UIColor blueColor];
        self.borderWidth    = 2;
        self.cornerRadious  = 10;
        self.isHorizontal   = NO;

        [self customInit];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self customInit];
    }
    return self;
}


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
