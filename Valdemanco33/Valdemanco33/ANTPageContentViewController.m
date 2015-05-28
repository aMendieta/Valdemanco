//
//  ANTPageContentViewController.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 21/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTPageContentViewController.h"

@interface ANTPageContentViewController ()

@end

@implementation ANTPageContentViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.backgroundImageView.image = [UIImage imageNamed:self.imageFile];
    self.titleLabel.text = self.titleText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
