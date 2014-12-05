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
    
    [self.navigationItem setTitle:@"Second View"];
    self.navigationController.navigationBar.backItem.title = @"Back";
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    [self.view setBackgroundColor:[UIColor yellowColor]];

}

-(void) goBack:(UIBarButtonItem *)sender{
   
[self.navigationController popViewControllerAnimated:YES];

}


@end
