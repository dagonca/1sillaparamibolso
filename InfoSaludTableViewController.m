//
//  InfoSaludTableViewController.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 19/05/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "InfoSaludTableViewController.h"

@interface InfoSaludTableViewController ()

@end

@implementation InfoSaludTableViewController

{
    NSArray *Fotos;
}


@synthesize recipeLabel,recipeLabel2,recipeLabel3;
@synthesize recipeName,recipeName2,recipeName3,recipeName4;

@synthesize recipeImageView,recipeImageView1,recipeImageView2,recipeImageView3,recipeImageView4,recipeImageView5,recipeImageView6,recipeImageView7,recipeImageView8,recipeImageView9,recipeImageView10,recipeImageView11,recipeImageView12,recipeImageView13,recipeImageView14,recipeImageView15;

@synthesize Foto,Foto1,Foto2,Foto3,Foto4,Foto5,Foto6,Foto7,Foto8,Foto9,Foto10,Foto11,Foto12,Foto13,Foto14,Foto15;

@synthesize recipeLabelLink1,recipeLabelLink2,recipeLabelLink3,recipeLabelLink4,recipeLabelLink5,recipeLabelLink6,recipeLabelLink7;
@synthesize recipelink1,recipelink2,recipelink3,recipelink4,recipelink5,recipelink6,recipelink7;

@synthesize link1,link2,link3,link4,link5,link6,link7,recipeLabel4;

@synthesize recipeLabelLink11,recipeLabelLink21,recipeLabelLink31,recipeLabelLink41,recipeLabelLink51,recipeLabelLink61,recipeLabelLink71,recipelink11,recipelink21,recipelink31,recipelink41,recipelink51,recipelink61,recipelink71;

- (void)viewDidLoad
{
   
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
    
    
    [self.navigationController.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle: @""
                                   style: UIBarButtonItemStyleBordered
                                   target: nil action: nil];
    [self.navigationItem setBackBarButtonItem: backButton];
    
    Fotos= [NSArray arrayWithObjects:Foto1,Foto2,Foto3,Foto4,Foto5,Foto6,Foto7,Foto8,Foto9,Foto10,Foto11,Foto12,Foto13,Foto14,Foto15,nil];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
