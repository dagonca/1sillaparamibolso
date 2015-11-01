//
//  ZonaVipTableViewController.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 19/05/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "ZonaVipTableViewController.h"

@interface ZonaVipTableViewController ()

@end

@implementation ZonaVipTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"cabecera2.jpg"];
    
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

- (IBAction)Comunidad:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://1sillaparamibolsoblog.es/category/comunidad/"]];
    
}

@end
