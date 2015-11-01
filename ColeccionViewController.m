//
//  ColeccionViewController.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 09/12/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "ColeccionViewController.h"
#import "ColeccionCell.h"

@interface ColeccionViewController ()

@end

@implementation ColeccionViewController{
    NSArray *Coleccion;
}
@synthesize collectionView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    UIImage *image = [UIImage imageNamed:@"cabecera2.jpg"];
    
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle: @""
                                   style: UIBarButtonItemStyleBordered
                                   target: nil action: nil];
    [self.navigationItem setBackBarButtonItem: backButton];
    

    
    Coleccion = [NSArray arrayWithObjects:[UIImage imageNamed:@"1.jpg"],
                 [UIImage imageNamed:@"2.jpg"],
                 [UIImage imageNamed:@"3.jpg"],
                 [UIImage imageNamed:@"4.jpg"],
                 [UIImage imageNamed:@"5.jpg"],
                 [UIImage imageNamed:@"6.jpg"],
                 [UIImage imageNamed:@"7.jpg"],
                 [UIImage imageNamed:@"8.jpg"], nil]
    ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [Coleccion count];
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"ColeccionCell";
    ColeccionCell *cell = (ColeccionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
     cell.parseImage.image = [Coleccion objectAtIndex:indexPath.row];
    
    
    return cell;
}
- (IBAction)Coleccion:(id)sender {
    [[UIApplication sharedApplication]
     openURL:[NSURL URLWithString:@"http://www.silvia-navarro.es"]];
    
}

@end
