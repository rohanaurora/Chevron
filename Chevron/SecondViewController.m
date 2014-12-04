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
    
    UIBarButtonItem *buttonOnBar =[[UIBarButtonItem alloc] initWithTitle:@"< Custom Title" style:UIBarButtonItemStylePlain target:self action:@selector(goBack:)];
    self.navigationItem.leftBarButtonItem = buttonOnBar;
    
}

-(void) goBack:(UIBarButtonItem *)sender{
   
[[self navigationController] popViewControllerAnimated:YES];
    
}


@end
