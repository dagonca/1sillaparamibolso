//
//  HotelesViewController.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 17/05/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "HotelesViewController.h"
#import "InfoHotelesTableViewController.h"
#import "HotelesCell.h"
#import "DescripcionTableViewController.h"
@interface HotelesViewController ()

@end

@implementation HotelesViewController

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
    PFQuery *query = [PFQuery queryWithClassName:@"Hoteles"];
    
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
    HotelesCell *cell = (HotelesCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    PFObject *imageObject = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile = [imageObject objectForKey:@"FotoInicio"];
    
    PFObject *imageObject1 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile1 = [imageObject1 objectForKey:@"Foto1"];
    
    PFObject *imageObject2 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile2 = [imageObject2 objectForKey:@"Foto2"];
    
    
    PFObject *imageObject3 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile3 = [imageObject3 objectForKey:@"Foto3"];
    
    PFObject *imageObject4 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile4 = [imageObject4 objectForKey:@"Foto4"];
    
    PFObject *imageObject5 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile5 = [imageObject5 objectForKey:@"Foto5"];
    
    PFObject *imageObject6 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile6 = [imageObject6 objectForKey:@"Foto6"];
    
    PFObject *imageObject7 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile7 = [imageObject7 objectForKey:@"Foto7"];
    
    PFObject *imageObject8 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile8 = [imageObject8 objectForKey:@"Foto8"];
    
    PFObject *imageObject9 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile9 = [imageObject9 objectForKey:@"Foto9"];
    
    PFObject *imageObject10 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile10 = [imageObject10 objectForKey:@"Foto10"];
    
    PFObject *imageObjec11 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile11 = [imageObjec11 objectForKey:@"Foto11"];
    
    PFObject *imageObject12 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile12 = [imageObject12 objectForKey:@"Foto12"];
    
    PFObject *imageObject13 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile13 = [imageObject13 objectForKey:@"Foto13"];
    
    PFObject *imageObject14 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile14 = [imageObject14 objectForKey:@"Foto14"];
    
    PFObject *imageObject15 = [imageFilesArray objectAtIndex:indexPath.row];
    PFFile *imageFile15 = [imageObject15 objectForKey:@"Foto15"];
    
    
    
    cell.loadingSpinner.hidden = NO;
    [cell.loadingSpinner startAnimating];
    
    [imageFile getDataInBackgroundWithBlock:^(NSData *data, NSError *error) {
        if (!error) {
            cell.parseImage.image = [UIImage imageWithData:data];
            [cell.loadingSpinner stopAnimating];
            cell.loadingSpinner.hidden = YES;
            
            
            
            [imageFile1 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            [imageFile2 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria1.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            [imageFile3 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria2.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile4 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria3.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            [imageFile5 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria4.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile6 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria5.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile7 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria6.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile8 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria7.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            [imageFile9 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria8.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile10 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria9.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile11 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria10.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile12 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria11.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile13 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria12.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile14 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria13.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            [imageFile15 getDataInBackgroundWithBlock:^(NSData *data, NSError *error){
                if(!error){
                    cell.Galeria14.image = [UIImage imageWithData:data];
                    [cell.loadingSpinner stopAnimating];
                    cell.loadingSpinner.hidden = YES;
                }
            }];
            
            
            
            
            
            
            PFObject *TituloObject = [TituloArray objectAtIndex:indexPath.row];
            
            PFObject *DescripcionObject = [DescripcionArray objectAtIndex:indexPath.row];
            
            PFObject *fechaObject = [fechaArray objectAtIndex:indexPath.row];
            
            PFObject *ComentaObject = [ComentaArray objectAtIndex:indexPath.row];
            
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
            
            cell.Titulo.text = [TituloObject objectForKey:@"Titulo"];
            cell.Descripcion.text = [DescripcionObject objectForKey:@"Descripcion"];
            cell.fecha.text = [fechaObject objectForKey:@"fecha"];
            cell.URLComenta.text = [ComentaObject objectForKey:@"Comenta"];
            
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
            
            
        }
    }];
    
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"Info"]) {
        NSArray *indexPaths = [self.imagesCollection indexPathsForSelectedItems];
        DescripcionTableViewController *destViewController = segue.destinationViewController;
        NSIndexPath *indexPath = [indexPaths objectAtIndex:0];
        
        //destViewController.recipeImageName = [recipeImages[indexPath.section] objectAtIndex:indexPath.row];
        
        
        PFObject *imageObject = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile = [imageObject objectForKey:@"FotoInicio"];
        NSData *imageData = [imageFile getData];
        UIImage *image = [UIImage imageWithData:imageData];
        
        destViewController.Foto = image;
        
        PFObject *imageObject1 = [imageFilesArray1 objectAtIndex:indexPath.row];
        PFFile *imageFile1 = [imageObject1 objectForKey:@"Foto1"];
        NSData *imageData1 = [imageFile1 getData];
        UIImage *image1 = [UIImage imageWithData:imageData1];
        
        destViewController.Foto1 = image1;
        
        PFObject *imageObject2 = [imageFilesArray2 objectAtIndex:indexPath.row];
        PFFile *imageFile2 = [imageObject2 objectForKey:@"Foto2"];
        NSData *imageData2 = [imageFile2 getData];
        UIImage *image2 = [UIImage imageWithData:imageData2];
        
        destViewController.Foto2 = image2;
        
        PFObject *imageObject3 = [imageFilesArray3 objectAtIndex:indexPath.row];
        PFFile *imageFile3 = [imageObject3 objectForKey:@"Foto3"];
        NSData *imageData3 = [imageFile3 getData];
        UIImage *image3 = [UIImage imageWithData:imageData3];
        
        destViewController.Foto3 = image3;
        
        PFObject *imageObject4 = [imageFilesArray4 objectAtIndex:indexPath.row];
        PFFile *imageFile4 = [imageObject4 objectForKey:@"Foto4"];
        NSData *imageData4 = [imageFile4 getData];
        UIImage *image4 = [UIImage imageWithData:imageData4];
        
        destViewController.Foto4 = image4;
        
        PFObject *imageObject5 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile5 = [imageObject5 objectForKey:@"Foto5"];
        NSData *imageData5 = [imageFile5 getData];
        UIImage *image5 = [UIImage imageWithData:imageData5];
        
        destViewController.Foto5 = image5;
        
        
        PFObject *imageObject6 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile6 = [imageObject6 objectForKey:@"Foto6"];
        NSData *imageData6 = [imageFile6 getData];
        UIImage *image6 = [UIImage imageWithData:imageData6];
        
        destViewController.Foto6 = image6;
        
        PFObject *imageObject7 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile7 = [imageObject7 objectForKey:@"Foto7"];
        NSData *imageData7 = [imageFile7 getData];
        UIImage *image7 = [UIImage imageWithData:imageData7];
        
        destViewController.Foto7 = image7;
        
        PFObject *imageObject8 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile8 = [imageObject8 objectForKey:@"Foto8"];
        NSData *imageData8 = [imageFile8 getData];
        UIImage *image8 = [UIImage imageWithData:imageData8];
        
        destViewController.Foto8 = image8;
        
        PFObject *imageObject9 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile9 = [imageObject9 objectForKey:@"Foto9"];
        NSData *imageData9 = [imageFile9 getData];
        UIImage *image9 = [UIImage imageWithData:imageData9];
        
        destViewController.Foto9 = image9;
        
        PFObject *imageObject10 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile10 = [imageObject10 objectForKey:@"Foto10"];
        NSData *imageData10= [imageFile10 getData];
        UIImage *image10 = [UIImage imageWithData:imageData10];
        
        destViewController.Foto10 = image10;
        
        PFObject *imageObject11 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile11 = [imageObject11 objectForKey:@"Foto11"];
        NSData *imageData11 = [imageFile11 getData];
        UIImage *image11 = [UIImage imageWithData:imageData11];
        
        destViewController.Foto11 = image11;
        
        PFObject *imageObject12 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile12 = [imageObject12 objectForKey:@"Foto12"];
        NSData *imageData12= [imageFile12 getData];
        UIImage *image12 = [UIImage imageWithData:imageData12];
        
        destViewController.Foto12 = image12;
        
        PFObject *imageObject13 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile13 = [imageObject13 objectForKey:@"Foto13"];
        NSData *imageData13 = [imageFile13 getData];
        UIImage *image13 = [UIImage imageWithData:imageData13];
        
        destViewController.Foto13 = image13;
        
        PFObject *imageObject14 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile14 = [imageObject14 objectForKey:@"Foto14"];
        NSData *imageData14 = [imageFile14 getData];
        UIImage *image14 = [UIImage imageWithData:imageData14];
        
        destViewController.Foto14 = image14;
        
        PFObject *imageObject15 = [imageFilesArray objectAtIndex:indexPath.row];
        PFFile *imageFile15 = [imageObject15 objectForKey:@"Foto15"];
        NSData *imageData15 = [imageFile15 getData];
        UIImage *image15 = [UIImage imageWithData:imageData15];
        
        destViewController.Foto15 = image15;
        
        
        PFObject *ComentaObject = [ComentaArray objectAtIndex:indexPath.row];
        destViewController.recipeName4 =[ComentaObject objectForKey:@"Comenta"];
        
        PFObject *TituloObject = [TituloArray objectAtIndex:indexPath.row];
        destViewController.recipeName = [TituloObject objectForKey:@"Titulo"];
        
        
        PFObject *DescripcionObject = [DescripcionArray objectAtIndex:indexPath.row];
        destViewController.recipeName2 = [DescripcionObject objectForKey:@"Descripcion"];
        
        PFObject *fechaObject =[fechaArray objectAtIndex:indexPath.row];
        destViewController.recipeName3 = [fechaObject objectForKey:@"fecha"];
        
        PFObject *LinkObject1 = [LinkArray1 objectAtIndex:indexPath.row];
        PFObject *LinkObject2 = [LinkArray2 objectAtIndex:indexPath.row];
        PFObject *LinkObject3 = [LinkArray3 objectAtIndex:indexPath.row];
        PFObject *LinkObject4 = [LinkArray4 objectAtIndex:indexPath.row];
        PFObject *LinkObject5 = [LinkArray5 objectAtIndex:indexPath.row];
        PFObject *LinkObject6 = [LinkArray6 objectAtIndex:indexPath.row];
        PFObject *LinkObject7 = [LinkArray7 objectAtIndex:indexPath.row];
        
        destViewController.recipelink1 =[LinkObject1 objectForKey:@"Link1"];
        destViewController.recipelink2 =[LinkObject2 objectForKey:@"Link2"];
        destViewController.recipelink3 =[LinkObject3 objectForKey:@"Link3"];
        destViewController.recipelink4 =[LinkObject4 objectForKey:@"Link4"];
        destViewController.recipelink5 =[LinkObject5 objectForKey:@"Link5"];
        destViewController.recipelink6 =[LinkObject6 objectForKey:@"Link6"];
        destViewController.recipelink7 =[LinkObject7 objectForKey:@"Link7"];
        
        
        PFObject *LinkObject11 = [LinkArray11 objectAtIndex:indexPath.row];
        PFObject *LinkObject21 = [LinkArray21 objectAtIndex:indexPath.row];
        PFObject *LinkObject31 = [LinkArray31 objectAtIndex:indexPath.row];
        PFObject *LinkObject41 = [LinkArray41 objectAtIndex:indexPath.row];
        PFObject *LinkObject51 = [LinkArray51 objectAtIndex:indexPath.row];
        PFObject *LinkObject61 = [LinkArray61 objectAtIndex:indexPath.row];
        PFObject *LinkObject71 = [LinkArray71 objectAtIndex:indexPath.row];
        
        destViewController.recipelink11 =[LinkObject11 objectForKey:@"NombreLink1"];
        destViewController.recipelink21 =[LinkObject21 objectForKey:@"NombreLink2"];
        destViewController.recipelink31 =[LinkObject31 objectForKey:@"NombreLink3"];
        destViewController.recipelink41 =[LinkObject41 objectForKey:@"NombreLink4"];
        destViewController.recipelink51 =[LinkObject51 objectForKey:@"NombreLink5"];
        destViewController.recipelink61 =[LinkObject61 objectForKey:@"NombreLink6"];
        destViewController.recipelink71 =[LinkObject71 objectForKey:@"NombreLink7"];
        
        [self.imagesCollection deselectItemAtIndexPath:indexPath animated:NO];
    }
}



@end
