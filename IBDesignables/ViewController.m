//
//  ViewController.m
//  IBDesignables
//
//  Created by MilanPanchal on 17/05/15.
//  Copyright (c) 2015 Pantech. All rights reserved.
//

#import "ViewController.h"
#import "SAMCustomView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    SAMCustomView *customView = [[SAMCustomView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2-50, self.view.frame.size.height/2-200, 100, 100)];
    customView.backgroundColor = [UIColor redColor];
    customView.borderWidth = 10;
    [self.view addSubview:customView];
    
    CGRect frame = CGRectMake(0, customView.frame.origin.y  + customView.frame.size.width + 10, self.view.frame.size.width, 20);
    UILabel *lbl = [[UILabel alloc] initWithFrame:frame];
    lbl.text = @"Added Via Code";
    lbl.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lbl];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
