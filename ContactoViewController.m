//
//  ContactoViewController.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 03/12/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "ContactoViewController.h"

@interface ContactoViewController ()

@end

@implementation ContactoViewController

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
- (IBAction)Mail1:(id)sender {
    MFMailComposeViewController *mailcontroller = [[MFMailComposeViewController alloc] init];
    [mailcontroller setMailComposeDelegate:self];
    NSString *email = @"1sillaparamibolso@gmail.com";
    NSArray *emailArray = [[NSArray alloc] initWithObjects:email, nil];
    [mailcontroller setToRecipients:emailArray];
    [mailcontroller setSubject:@""];
    [self presentViewController:mailcontroller animated:YES completion:nil];
    

}

- (IBAction)Mail2:(id)sender {
    MFMailComposeViewController *mailcontroller = [[MFMailComposeViewController alloc] init];
    [mailcontroller setMailComposeDelegate:self];
    NSString *email = @"comunicacion@1sillaparamibolso.com";
    NSArray *emailArray = [[NSArray alloc] initWithObjects:email, nil];
    [mailcontroller setToRecipients:emailArray];
    [mailcontroller setSubject:@""];
    [self presentViewController:mailcontroller animated:YES completion:nil];
    

}
-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)Facebook:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"https://www.facebook.com/1sillaparamibolso"]];

}
- (IBAction)Twitter:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"https://twitter.com/1sillaxamibolso"]];

}
- (IBAction)Instagram:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://instagram.com/1sillaparamibolso"]];

}

@end
