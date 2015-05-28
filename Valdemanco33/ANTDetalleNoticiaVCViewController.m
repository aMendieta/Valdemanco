//
//  ANTDetalleNoticiaVCViewController.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 18/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTDetalleNoticiaVCViewController.h"

@interface ANTDetalleNoticiaVCViewController ()

@end

@implementation ANTDetalleNoticiaVCViewController

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
    
    NSString *urlString = [self.urlDetalleNoticia stringByReplacingOccurrencesOfString:@"\n" withString:@""];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *req = [[NSURLRequest alloc]initWithURL:url];
    [self.webview1 loadRequest:req];
    
    [self.webview1 setScalesPageToFit:YES];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
