//
//  ExampleViewController.h
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 03/12/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//



#import <UIKit/UIKit.h>
#import "JBKenBurnsView.h"

@interface ExampleViewController : UIViewController <JBKenBurnsViewDelegate> {
    JBKenBurnsView *kenView;
}

@property (nonatomic, retain) IBOutlet JBKenBurnsView *kenView;

@end
