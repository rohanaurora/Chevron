//
//  SecondViewController.m
//  Chevron
//
//  Created by Rohan Aurora on 12/3/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

-(void) viewDidLoad {
    
    [super viewDidLoad];
    
    [self setTitle:@"Second View"];
    
    UIBarButtonItem *buttonOnBar =[[UIBarButtonItem alloc] initWithTitle:@"To First" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.leftBarButtonItem = buttonOnBar;
    
}


@end
