//
//  InfoDiaViewController.h
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 15/05/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InfoDiaViewController : UIViewController
@property (weak, nonatomic) NSString *recipeImageName;

@property (weak, nonatomic) IBOutlet UIImageView *recipeImageView;
@property (nonatomic, strong) UIImage *Foto;
@end
