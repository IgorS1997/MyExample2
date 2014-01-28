//
//  EXViewController.h
//  Example2
//
//  Created by Alex Aleshkov on 2/28/13.
//  Copyright (c) 2013 RogaAndKopita. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface EXViewController : UIViewController
{
    NSMutableArray *_cats;
    NSInteger _catIndex;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *moarButton;
@property (weak, nonatomic) IBOutlet UIImageView *boxImageView;

- (IBAction)moarButtonAction:(id)sender;

@end
