//
//  TableViewCell.m
//  1sillaparamibolso
//
//  Created by Dani Gonzalez castillo on 30/07/14.
//  Copyright (c) 2014 Dani Gonzalez castillo. All rights reserved.
//

#import "TableViewCell.h"

@implementation TableViewCell
@synthesize image;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
