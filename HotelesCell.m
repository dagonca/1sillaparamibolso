//
//  HotelesCell.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 17/05/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "HotelesCell.h"

@implementation HotelesCell
@synthesize parseImage, loadingSpinner,Titulo,Descripcion,fecha,URLComenta;

@synthesize Galeria,Galeria1,Galeria2,Galeria3,Galeria4,Galeria5,Galeria6,Galeria7,Galeria8,Galeria9,Galeria10,Galeria11,Galeria12,Galeria13,Galeria14;

@synthesize link1,link2,link3,link4,link5,link6,link7;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
