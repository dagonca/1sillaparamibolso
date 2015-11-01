//
//  InfoHotelesTableViewController.h
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 17/05/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoHotelesTableViewController : UITableViewController

@property (weak, nonatomic) NSString *recipeImageName;

@property (nonatomic, strong) NSString *recipeName;
@property (nonatomic, strong) NSString *recipeName2;
@property (nonatomic, strong) NSString *recipeName3;
@property (nonatomic, strong) NSString *recipeName4;

@property (nonatomic, strong) NSString *recipelink1;
@property (nonatomic, strong) NSString *recipelink2;
@property (nonatomic, strong) NSString *recipelink3;
@property (nonatomic, strong) NSString *recipelink4;
@property (nonatomic, strong) NSString *recipelink5;
@property (nonatomic, strong) NSString *recipelink6;
@property (nonatomic, strong) NSString *recipelink7;

@property (nonatomic, strong) NSString *recipelink11;
@property (nonatomic, strong) NSString *recipelink21;
@property (nonatomic, strong) NSString *recipelink31;
@property (nonatomic, strong) NSString *recipelink41;
@property (nonatomic, strong) NSString *recipelink51;
@property (nonatomic, strong) NSString *recipelink61;
@property (nonatomic, strong) NSString *recipelink71;



@property (weak, nonatomic) IBOutlet UILabel *recipeLabel;
@property (weak, nonatomic) IBOutlet UITextView *recipeLabel2;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabel3;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabel4;

@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink1;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink2;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink3;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink4;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink5;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink6;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink7;

@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink11;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink21;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink31;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink41;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink51;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink61;
@property (weak, nonatomic) IBOutlet UILabel *recipeLabelLink71;






@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView1;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView2;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView3;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView4;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView5;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView6;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView7;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView8;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView9;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView10;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView11;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView12;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView13;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView14;
@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView15;

@property (nonatomic, strong) UIImage *Foto;
@property (nonatomic, strong) UIImage *Foto1;
@property (nonatomic, strong) UIImage *Foto2;
@property (nonatomic, strong) UIImage *Foto3;
@property (nonatomic, strong) UIImage *Foto4;
@property (nonatomic, strong) UIImage *Foto5;
@property (nonatomic, strong) UIImage *Foto6;
@property (nonatomic, strong) UIImage *Foto7;
@property (nonatomic, strong) UIImage *Foto8;
@property (nonatomic, strong) UIImage *Foto9;
@property (nonatomic, strong) UIImage *Foto10;
@property (nonatomic, strong) UIImage *Foto11;
@property (nonatomic, strong) UIImage *Foto12;
@property (nonatomic, strong) UIImage *Foto13;
@property (nonatomic, strong) UIImage *Foto14;
@property (nonatomic, strong) UIImage *Foto15;




@property (weak, nonatomic) IBOutlet UICollectionView *cellection;

@property (weak, nonatomic) IBOutlet UIButton *link1;
@property (weak, nonatomic) IBOutlet UIButton *link2;
@property (weak, nonatomic) IBOutlet UIButton *link3;
@property (weak, nonatomic) IBOutlet UIButton *link4;
@property (weak, nonatomic) IBOutlet UIButton *link5;
@property (weak, nonatomic) IBOutlet UIButton *link6;
@property (weak, nonatomic) IBOutlet UIButton *link7;

@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UITableView *table;

@end
