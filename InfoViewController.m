//
//  InfoViewController.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 04/12/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "InfoViewController.h"
#import "CollectionCell.h"



@interface InfoViewController ()

@end

@implementation InfoViewController{
    NSArray *Fotos;
}


@synthesize recipeLabel,recipeLabel2,recipeLabel3,recipeLabel4,pageControl;
@synthesize recipeName,recipeName2,recipeName3,recipeName4;

@synthesize recipeImageView,recipeImageView1,recipeImageView2,recipeImageView3,recipeImageView4,recipeImageView5,recipeImageView6,recipeImageView7,recipeImageView8,recipeImageView9,recipeImageView10,recipeImageView11,recipeImageView12,recipeImageView13,recipeImageView14,recipeImageView15;

@synthesize Foto,Foto1,Foto2,Foto3,Foto4,Foto5,Foto6,Foto7,Foto8,Foto9,Foto10,Foto11,Foto12,Foto13,Foto14,Foto15;

@synthesize recipeLabelLink1,recipeLabelLink2,recipeLabelLink3,recipeLabelLink4,recipeLabelLink5,recipeLabelLink6,recipeLabelLink7;
@synthesize recipelink1,recipelink2,recipelink3,recipelink4,recipelink5,recipelink6,recipelink7;

@synthesize link1,link2,link3,link4,link5,link6,link7;

@synthesize recipeLabelLink11,recipeLabelLink21,recipeLabelLink31,recipeLabelLink41,recipeLabelLink51,recipeLabelLink61,recipeLabelLink71,recipelink11,recipelink21,recipelink31,recipelink41,recipelink51,recipelink61,recipelink71;

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
    [link1  setTitle:[NSString stringWithFormat:@"%@",recipelink11] forState:UIControlStateNormal];
    [link2  setTitle:[NSString stringWithFormat:@"%@",recipelink21] forState:UIControlStateNormal];
    [link3  setTitle:[NSString stringWithFormat:@"%@",recipelink31] forState:UIControlStateNormal];
    [link4  setTitle:[NSString stringWithFormat:@"%@",recipelink41] forState:UIControlStateNormal];
    [link5  setTitle:[NSString stringWithFormat:@"%@",recipelink51] forState:UIControlStateNormal];
    [link6  setTitle:[NSString stringWithFormat:@"%@",recipelink61] forState:UIControlStateNormal];
    [link7  setTitle:[NSString stringWithFormat:@"%@",recipelink71] forState:UIControlStateNormal];

    
    
    
    [super viewDidLoad];

    UIImage *image = [UIImage imageNamed:@"cabecera2.jpg"];
    
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    
	recipeLabel.text = recipeName;
    recipeLabel2.text = recipeName2;
    recipeLabel3.text = recipeName3;
    recipeLabel4.text = recipeName4;
   
    recipeLabelLink1.text =recipelink1;
    recipeLabelLink2.text =recipelink2;
    recipeLabelLink3.text =recipelink3;
    recipeLabelLink4.text =recipelink4;
    recipeLabelLink5.text =recipelink5;
    recipeLabelLink6.text =recipelink6;
    recipeLabelLink7.text =recipelink7;
    
    recipeLabelLink11.text =recipelink11;
    recipeLabelLink21.text =recipelink21;
    recipeLabelLink31.text =recipelink31;
    recipeLabelLink41.text =recipelink41;
    recipeLabelLink51.text =recipelink51;
    recipeLabelLink61.text =recipelink61;
    recipeLabelLink71.text =recipelink71;

    
    recipeImageView.image = Foto;
    recipeImageView1.image = Foto1;
    recipeImageView2.image = Foto2;
    recipeImageView3.image = Foto3;
    recipeImageView4.image = Foto4;
    recipeImageView5.image = Foto5;
    recipeImageView6.image = Foto6;
    recipeImageView7.image = Foto7;
    recipeImageView8.image = Foto8;
    recipeImageView9.image = Foto9;
    recipeImageView10.image = Foto10;
    recipeImageView11.image = Foto11;
    recipeImageView12.image = Foto12;
    recipeImageView13.image = Foto13;
    recipeImageView14.image = Foto14;
    recipeImageView15.image = Foto15;
    
    if ([recipelink1 isEqualToString:@""]) {
        [link1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }else
    {
        [link1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }
    
    if ([recipelink2 isEqualToString:@""]) {
        [link2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }else
    {
        [link2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }

    if ([recipelink3 isEqualToString:@""]) {
        [link3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }else
    {
        [link3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }

    if ([recipelink4 isEqualToString:@""]) {
        [link4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }else
    {
        [link4 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }

    if ([recipelink5 isEqualToString:@""]) {
        [link5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }else
    {
        [link5 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }

    if ([recipelink6 isEqualToString:@""]) {
        [link6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }else
    {
        [link6 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }
    if ([recipelink7 isEqualToString:@""]) {
        [link7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }else
    {
        [link7 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    }


    
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle: @""
                                   style: UIBarButtonItemStyleBordered
                                   target: nil action: nil];
    [self.navigationItem setBackBarButtonItem: backButton];

    Fotos= [NSArray arrayWithObjects:Foto1,Foto2,Foto3,Foto4,Foto5,Foto6,Foto7,Foto8,Foto9,Foto10,Foto11,Foto12,Foto13,Foto14,Foto15,nil];

    pageControl.numberOfPages=[ Fotos count];
    pageControl.backgroundColor=[UIColor clearColor];
    pageControl.currentPageIndicatorTintColor= [UIColor whiteColor];
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
    return [Fotos count];
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"imageCell";
    CollectionCell *cell = (CollectionCell *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.Image.image = [Fotos objectAtIndex:indexPath.row];
    cell.Image.contentMode = UIViewContentModeScaleAspectFill;
   
      return cell;
}
- (IBAction)Comenta:(id)sender {
    
    
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",recipeName4]]] ;
}

- (IBAction)link1:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",recipelink1]]] ;
}
- (IBAction)link2:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",recipelink2]]] ;
}
- (IBAction)link3:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",recipelink3]]] ;
}
- (IBAction)link4:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",recipelink4]]] ;
}
- (IBAction)link5:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",recipelink5]]] ;
}
- (IBAction)link6:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",recipelink6]]] ;
}
- (IBAction)link7:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",recipelink7]]] ;
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGFloat pageWidth = _cellection.frame.size.width;
    float currentPage = _cellection.contentOffset.x / pageWidth;
    
    if (0.0f != fmodf(currentPage, 1.0f)) {
        pageControl.currentPage = currentPage + 1;
    } else {
        pageControl.currentPage = currentPage;
    }
   
}

@end
