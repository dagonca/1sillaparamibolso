//
//  ExampleViewController.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 03/12/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//


#import "ExampleViewController.h"
#import <QuartzCore/QuartzCore.h>

@implementation ExampleViewController
@synthesize kenView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
       }

- (void)viewDidAppear:(BOOL)animated
{
    NSArray *myImages = [NSArray arrayWithObjects:[UIImage imageNamed:@"1.jpg"],
                         [UIImage imageNamed:@"2.jpg"],
                         [UIImage imageNamed:@"3.jpg"],
                         [UIImage imageNamed:@"4.jpg"],
                         [UIImage imageNamed:@"5.jpg"],
                         [UIImage imageNamed:@"6.jpg"],
                         [UIImage imageNamed:@"7.jpg"],
                         [UIImage imageNamed:@"8.jpg"], nil]
    ;
    [self.kenView animateWithImages:myImages
                 transitionDuration:8
                               loop:YES
                        isLandscape:YES];
}

- (void)viewDidUnload
{
    self.kenView.delegate = nil;
    [self setKenView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}


#pragma KenBurnsViewDelegate


- (void)didFinishAllAnimations
{
    NSLog(@"Yay all done!");
}
- (IBAction)Coleccion:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.silvia-navarro.es"]];
    
}


@end
