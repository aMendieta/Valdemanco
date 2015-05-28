//
//  ANTInfoVC.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANTInfo.h"

@interface ANTInfoVC : UIViewController


@property (strong,nonatomic) ANTInfo * aInfo;
@property (weak, nonatomic) IBOutlet UITextView *lblInfo;
@property (weak, nonatomic) IBOutlet UIImageView *imgImagen;


-(id)initWithModel: (ANTInfo *)informacion;


@end
