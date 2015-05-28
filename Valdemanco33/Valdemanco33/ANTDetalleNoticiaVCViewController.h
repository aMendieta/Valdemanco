//
//  ANTDetalleNoticiaVCViewController.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 18/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANTDetalleNoticiaVCViewController : UIViewController

@property (nonatomic,copy) NSString *urlDetalleNoticia;
@property (weak, nonatomic) IBOutlet UIWebView *webview1;

@end
