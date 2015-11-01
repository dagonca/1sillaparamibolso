//
//  JBKenBurnsView.h
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 03/12/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//



#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@class JBKenBurnsView;

#pragma - KenBurnsViewDelegate
@protocol JBKenBurnsViewDelegate <NSObject>
@optional
- (void)didShowImageAtIndex:(NSUInteger)index;
- (void)didFinishAllAnimations;
@end

@interface JBKenBurnsView : UIView

@property (unsafe_unretained) id<JBKenBurnsViewDelegate> delegate;

@property (readonly) NSArray *images;
@property (readonly) UIImage *currentImage;
@property (readonly) NSInteger currentImageIndex;

- (void) animateWithImagePaths:(NSArray *)imagePaths transitionDuration:(float)time loop:(BOOL)isLoop isLandscape:(BOOL)isLandscape;
- (void) animateWithImages:(NSArray *)images transitionDuration:(float)time loop:(BOOL)isLoop isLandscape:(BOOL)isLandscape;
- (void) stopAnimation;
@end


