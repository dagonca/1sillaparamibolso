//
//  ColeccionCell.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 09/12/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "ColeccionCell.h"

@implementation ColeccionCell

@synthesize parseImage, loadingSpinner;



@synthesize link1,link2,link3,link4,link5,link6,link7,boton1,boton7,boton6,boton5,boton4,boton3,boton2;


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
- (IBAction)Boton1:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",link1.text]]] ;
}
- (IBAction)Boton2:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",link2.text]]] ;
}
- (IBAction)Boton3:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",link3.text]]] ;
}
- (IBAction)Boton4:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",link4.text]]] ;
}
- (IBAction)Boton5:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",link5.text]]] ;
}
- (IBAction)Boton6:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",link6.text]]] ;
}
- (IBAction)Boton7:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",link7.text]]] ;
}

@end
