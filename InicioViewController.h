//
//  InicioViewController.h
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 09/12/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ImageExampleCell.h"
#import <Parse/Parse.h>


@interface InicioViewController : UIViewController{
    
    NSArray *imageFilesArray;
    NSArray *TituloArray;
    NSArray *DescripcionArray;
    NSMutableArray *imagesArray;
    NSArray *fechaArray;
    NSArray *ComentaArray;
    
    NSArray *LinkArray1;
    NSArray *LinkArray2;
    NSArray *LinkArray3;
    NSArray *LinkArray4;
    NSArray *LinkArray5;
    NSArray *LinkArray6;
    NSArray *LinkArray7;
    
    NSArray *LinkArray11;
    NSArray *LinkArray21;
    NSArray *LinkArray31;
    NSArray *LinkArray41;
    NSArray *LinkArray51;
    NSArray *LinkArray61;
    NSArray *LinkArray71;
    
    
    
    NSArray *imageFilesArray1;
    NSArray *imageFilesArray2;
    NSArray *imageFilesArray3;
    NSArray *imageFilesArray4;
    NSArray *imageFilesArray5;
    NSArray *imageFilesArray6;
    NSArray *imageFilesArray7;
    NSArray *imageFilesArray8;
    NSArray *imageFilesArray9;
    NSArray *imageFilesArray10;
    NSArray *imageFilesArray11;
    NSArray *imageFilesArray12;
    NSArray *imageFilesArray13;
    NSArray *imageFilesArray14;
    NSArray *imageFilesArray15;
    
    
    
}

@property (weak, nonatomic) IBOutlet UICollectionView *imagesCollection;



@end
