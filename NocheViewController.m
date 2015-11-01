//
//  NocheViewController.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 10/06/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "NocheViewController.h"
#import "ColeccionCell.h"
#import "InfoDiaViewController.h"


@interface NocheViewController ()

@end

@implementation NocheViewController
@synthesize imagesCollection;

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
    
    
    
    [self queryParseMethod];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)queryParseMethod {
    NSLog(@"start query");
    PFQuery *query = [PFQuery queryWithClassName:@"OutfitNoche"];
    
    [query orderByDescending:@"Posicion"];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            imageFilesArray = [[NSArray alloc] initWithArray:objects];
            TituloArray = [[NSArray alloc] initWithArray:objects];
            DescripcionArray = [[NSArray alloc] initWithArray:objects];
            fechaArray = [[NSArray alloc] initWithArray:objects];
            
            imageFilesArray1 = [[NSArray alloc] initWithArray:objects];
            imageFilesArray2 = [[NSArray alloc] initWithArray:objects];
            imageFilesArray3 = [[NSArray alloc] initWithArray:objects];
            imageFilesArray4 = [[NSArray alloc] initWithArray:objects];
            
            ComentaArray = [[NSArray alloc] initWithArray:objects];
            
            LinkArray1 = [[NSArray alloc] initWithArray:objects];
            LinkArray2 = [[NSArray alloc] initWithArray:objects];
            LinkArray3 = [[NSArray alloc] initWithArray:objects];
            LinkArray4 = [[NSArray alloc] initWithArray:objects];
            LinkArray5 = [[NSArray alloc] initWithArray:objects];
            LinkArray6 = [[NSArray alloc] initWithArray:objects];
            LinkArray7 = [[NSArray alloc] initWithArray:objects];
            
            LinkArray11 = [[NSArray alloc] initWithArray:objects];
            LinkArray21 = [[NSArray alloc] initWithArray:objects];
            LinkArray31 = [[NSArray alloc] initWithArray:objects];
            LinkArray41 = [[NSArray alloc] initWithArray:objects];
            LinkArray51 = [[NSArray alloc] initWithArray:objects];
            LinkArray61 = [[NSArray alloc] initWithArray:objects];
            LinkArray71 = [[NSArray alloc] initWithArray:objects];
            
            
            
            NSLog(@"%@", imageFilesArray);
            
            [imagesCollection reloadData];
        }
    }];
}



#pragma mark - UICollectionView data source

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [imageFilesArray count];
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"imageCell";
    ColeccionCell *cell = (ColeccionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    PFObject *imageObject = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile = [imageObject objectForKey:@"FotoInicio"];
    
    
    
    
    cell.loadingSpinner.hidden = NO;
    [cell.loadingSpinner startAnimating];
    
    [imageFile getDataInBackgroundWithBlock:^(NSData *data, NSError *error) {
        if (!error) {
            cell.parseImage.image = [UIImage imageWithData:data];
            [cell.loadingSpinner stopAnimating];
            cell.loadingSpinner.hidden = YES;
            
            
            
            PFObject *LinkObject1 = [LinkArray1 objectAtIndex:indexPath.row];
            PFObject *LinkObject2 = [LinkArray2 objectAtIndex:indexPath.row];
            PFObject *LinkObject3 = [LinkArray3 objectAtIndex:indexPath.row];
            PFObject *LinkObject4 = [LinkArray4 objectAtIndex:indexPath.row];
            PFObject *LinkObject5 = [LinkArray5 objectAtIndex:indexPath.row];
            PFObject *LinkObject6 = [LinkArray6 objectAtIndex:indexPath.row];
            PFObject *LinkObject7 = [LinkArray7 objectAtIndex:indexPath.row];
            
            PFObject *LinkObject11 = [LinkArray11 objectAtIndex:indexPath.row];
            PFObject *LinkObject21 = [LinkArray21 objectAtIndex:indexPath.row];
            PFObject *LinkObject31 = [LinkArray31 objectAtIndex:indexPath.row];
            PFObject *LinkObject41 = [LinkArray41 objectAtIndex:indexPath.row];
            PFObject *LinkObject51 = [LinkArray51 objectAtIndex:indexPath.row];
            PFObject *LinkObject61 = [LinkArray61 objectAtIndex:indexPath.row];
            PFObject *LinkObject71 = [LinkArray71 objectAtIndex:indexPath.row];
            
            cell.link1.text = [LinkObject1 objectForKey:@"Link1"];
            cell.link2.text = [LinkObject2 objectForKey:@"Link2"];
            cell.link3.text = [LinkObject3 objectForKey:@"Link3"];
            cell.link4.text = [LinkObject4 objectForKey:@"Link4"];
            cell.link5.text = [LinkObject5 objectForKey:@"Link5"];
            cell.link6.text = [LinkObject6 objectForKey:@"Link6"];
            cell.link7.text = [LinkObject7 objectForKey:@"Link7"];
            
            cell.Nlink1.text = [LinkObject11 objectForKey:@"NombreLink1"];
            cell.Nlink2.text = [LinkObject21 objectForKey:@"NombreLink2"];
            cell.Nlink3.text = [LinkObject31 objectForKey:@"NombreLink3"];
            cell.Nlink4.text = [LinkObject41 objectForKey:@"NombreLink4"];
            cell.Nlink5.text = [LinkObject51 objectForKey:@"NombreLink5"];
            cell.Nlink6.text = [LinkObject61 objectForKey:@"NombreLink6"];
            cell.Nlink7.text = [LinkObject71 objectForKey:@"NombreLink7"];
            
            [cell.boton1  setTitle:[NSString stringWithFormat:@"%@",cell.Nlink1.text] forState:UIControlStateNormal];
            [cell.boton2  setTitle:[NSString stringWithFormat:@"%@",cell.Nlink2.text] forState:UIControlStateNormal];
            [cell.boton3  setTitle:[NSString stringWithFormat:@"%@",cell.Nlink3.text] forState:UIControlStateNormal];
            [cell.boton4  setTitle:[NSString stringWithFormat:@"%@",cell.Nlink4.text] forState:UIControlStateNormal];
            [cell.boton5  setTitle:[NSString stringWithFormat:@"%@",cell.Nlink5.text] forState:UIControlStateNormal];
            [cell.boton6  setTitle:[NSString stringWithFormat:@"%@",cell.Nlink6.text] forState:UIControlStateNormal];
            [cell.boton7  setTitle:[NSString stringWithFormat:@"%@",cell.Nlink7.text] forState:UIControlStateNormal];
            
            
            if ([cell.link1.text isEqualToString:@""]||[cell.link1.text isEqualToString:@"(null)"]) {
                [cell.boton1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            }else
            {
                [cell.boton1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            }
            if ([cell.link2.text isEqualToString:@""]) {
                [cell.boton2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            }else
            {
                [cell.boton2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            }
            if ([cell.link3.text isEqualToString:@""]) {
                [cell.boton3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            }else
            {
                [cell.boton3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            }
            if ([cell.link4.text isEqualToString:@""]) {
                [cell.boton4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            }else
            {
                [cell.boton4 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            }
            if ([cell.link5.text isEqualToString:@""]) {
                [cell.boton5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            }else
            {
                [cell.boton5 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            }
            if ([cell.link6.text isEqualToString:@""]) {
                [cell.boton6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            }else
            {
                [cell.boton6 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            }
            if ([cell.link7.text isEqualToString:@""]) {
                [cell.boton7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            }else
            {
                [cell.boton7 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            }
            if ([cell.link1.text isEqualToString:@""]) {
                [cell.boton1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            }else
            {
                [cell.boton1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
            }
            
        }
    }];
    
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Info"]) {
        NSArray *indexPaths = [self.imagesCollection indexPathsForSelectedItems];
        InfoDiaViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        
        //destViewController.recipeImageName = [recipeImages[indexPath.section] objectAtIndex:indexPath.row];
        
        
        PFObject *imageObject = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile = [imageObject objectForKey:@"FotoInicio"];
        NSData *imageData = [imageFile getData];
        UIImage *image = [UIImage imageWithData:imageData];
        
        destViewController.Foto = image;
        
        
        
        
        [self.imagesCollection deselectItemAtIndexPath:indexPath animated:NO];
    }
}


@end