//
//  ANTCeldaVCCell.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 18/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANTCeldaVCCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *lblTitulo;

@property (weak, nonatomic) IBOutlet UILabel *lblDescripcion;
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
