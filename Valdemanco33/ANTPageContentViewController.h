//
//  ANTPageContentViewController.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 21/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANTPageContentViewController : UIViewController


@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;



@end
