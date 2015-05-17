//
//  SAMCustomView.h
//  IBDesignables
//
//  Created by MilanPanchal on 17/05/15.
//  Copyright (c) 2015 Pantech. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface SAMCustomView : UIView


@property (nonatomic) IBInspectable NSInteger borderWidth;
@property (nonatomic) IBInspectable CGFloat cornerRadious;
@property (nonatomic) IBInspectable BOOL isHorizontal;

@end
