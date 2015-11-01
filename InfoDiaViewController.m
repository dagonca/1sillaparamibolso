//
//  InfoDiaViewController.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 15/05/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "InfoDiaViewController.h"

@interface InfoDiaViewController ()

@end

@implementation InfoDiaViewController


@synthesize recipeImageView,Foto;



- (void)viewDidLoad
{

    
    [super viewDidLoad];
    
    UIImage *image = [UIImage imageNamed:@"cabecera2.jpg"];
    
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    

    recipeImageView.image = Foto;
    
    
    
    
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle: @""
                                   style: UIBarButtonItemStyleBordered
                                   target: nil action: nil];
    [self.navigationItem setBackBarButtonItem: backButton];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
