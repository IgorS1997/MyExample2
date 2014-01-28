//
//  EXViewController.m
//  Example2
//
//  Created by Alex Aleshkov on 2/28/13.
//  Copyright (c) 2013 RogaAndKopita. All rights reserved.
//


#import "EXViewController.h"


@interface EXViewController ()

@end


@implementation EXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _cats = [NSMutableArray array];
    UIImage *cat1Image = [UIImage imageNamed:@"1225141003_1-21.jpg"];
    UIImage *cat2Image = [UIImage imageNamed:@"282795_original.jpg"];
    UIImage *cat3Image = [UIImage imageNamed:@"367868.jpg"];
    UIImage *cat4Image = [UIImage imageNamed:@"514700.jpg"];
    UIImage *cat5Image = [UIImage imageNamed:@"j111087_1227203302.jpg"];
    [_cats addObject:cat1Image];
    [_cats addObject:cat2Image];
    [_cats addObject:cat3Image];
    [_cats addObject:cat4Image];
    [_cats addObject:cat5Image];

    self.imageView.image = [_cats objectAtIndex:_catIndex];
    
    UIImage *backgroundImage = [UIImage imageNamed:@"BackgroundPattern.png"];
    UIColor *backgroundColor = [UIColor colorWithPatternImage:backgroundImage];
    self.view.backgroundColor = backgroundColor;
    
    
    UIImage *buttonNormalImage = [UIImage imageNamed:@"RedButtonDefault"];
    UIImage *buttonNormalStretchableImage = [buttonNormalImage stretchableImageWithLeftCapWidth:14 topCapHeight:0];
    
    UIImage *buttonHighlightedImage = [UIImage imageNamed:@"RedButtonHighlighted"];
    UIImage *buttonHighlightedStretchableImage = [buttonHighlightedImage stretchableImageWithLeftCapWidth:14 topCapHeight:0];
    [self.moarButton setBackgroundImage:buttonNormalStretchableImage forState:UIControlStateNormal];
    [self.moarButton setBackgroundImage:buttonHighlightedStretchableImage forState:UIControlStateHighlighted];
    
    
    //boxImageView
    UIImage *boxImage = [UIImage imageNamed:@"Extrude"];
    UIImage *boxResizableImage = [boxImage resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15)];
    self.boxImageView.image = boxResizableImage;
}

- (IBAction)moarButtonAction:(id)sender
{
    _catIndex++;
    if (_catIndex == _cats.count) {
        _catIndex = 0;
    }
    self.imageView.image = [_cats objectAtIndex:_catIndex];
}

@end
