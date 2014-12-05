//
//  FirstViewController.m
//  Chevron
//
//  Created by Rohan Aurora on 12/3/14.
//  Copyright (c) 2014 Rohan Aurora. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation FirstViewController


-(void) viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [self.navigationItem setTitle:@"First View"];
    self.view.backgroundColor = [UIColor redColor];
    
    // Custom image
    UIEdgeInsets edgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    UIImage *backButtonImage = [[UIImage imageNamed:@"nextImage"] resizableImageWithCapInsets:edgeInsets];
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [backButton setFrame:CGRectMake(0, 0, 100, 30)];
    [backButton setBackgroundImage:backButtonImage forState:UIControlStateNormal];
    
    // Custom title
    [backButton setTitle:@"Next" forState:UIControlStateNormal];
    [backButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(barPayButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [backButton setShowsTouchWhenHighlighted:NO];
    
    UIBarButtonItem *buttonOnBar =[[UIBarButtonItem alloc] initWithCustomView:backButton];
    self.navigationItem.rightBarButtonItem = buttonOnBar;
    
}


-(void)barPayButtonPressed:(UIBarButtonItem *)sender{
    
    SecondViewController *thankyouVC = [[SecondViewController alloc] init];
    
    CATransition *transition = [CATransition animation];
    transition.duration = 0.2;
    transition.type = kCATransitionPush;
    transition.subtype = kCATransitionFromRight;
    
    [self.navigationController.view.layer addAnimation:transition forKey:kCATransition];
    [self.navigationController pushViewController:thankyouVC animated:NO];
}


@end
