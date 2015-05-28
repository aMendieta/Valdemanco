//
//  ANTPlanoVC.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 19/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANTVerMasPlanosVC.h"

@interface ANTPlanoVC : UIViewController <NuevoPlanoDelegate, UIPageViewControllerDataSource>
//@interface ANTPlanoVC : UIViewController<UIPageViewControllerDataSource>



- (IBAction)startWalkthrough:(id)sender;


@property NSUInteger pageIndex;
@property NSString *titleText;
@property NSString *imageFile;

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;
@property (strong, nonatomic) NSArray *pageImages;



@end
