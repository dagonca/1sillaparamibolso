//
//  ColeccionCell.h
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 09/12/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColeccionCell : UICollectionViewCell



@property (weak, nonatomic) IBOutlet UIImageView *parseImage;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *loadingSpinner;



@property (weak, nonatomic) IBOutlet UILabel *link1;
@property (weak, nonatomic) IBOutlet UILabel *link2;
@property (weak, nonatomic) IBOutlet UILabel *link3;
@property (weak, nonatomic) IBOutlet UILabel *link4;
@property (weak, nonatomic) IBOutlet UILabel *link5;
@property (weak, nonatomic) IBOutlet UILabel *link6;
@property (weak, nonatomic) IBOutlet UILabel *link7;

@property (weak, nonatomic) IBOutlet UILabel *Nlink1;
@property (weak, nonatomic) IBOutlet UILabel *Nlink2;
@property (weak, nonatomic) IBOutlet UILabel *Nlink3;
@property (weak, nonatomic) IBOutlet UILabel *Nlink4;
@property (weak, nonatomic) IBOutlet UILabel *Nlink5;
@property (weak, nonatomic) IBOutlet UILabel *Nlink6;
@property (weak, nonatomic) IBOutlet UILabel *Nlink7;


@property (weak, nonatomic) IBOutlet UIButton *boton1;
@property (weak, nonatomic) IBOutlet UIButton *boton2;
@property (weak, nonatomic) IBOutlet UIButton *boton3;
@property (weak, nonatomic) IBOutlet UIButton *boton4;
@property (weak, nonatomic) IBOutlet UIButton *boton5;
@property (weak, nonatomic) IBOutlet UIButton *boton6;
@property (weak, nonatomic) IBOutlet UIButton *boton7;

@end
