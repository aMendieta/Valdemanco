//
//  ANTVerMasPlanosVC.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 19/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTVerMasPlanosVC.h"
#import "ANTPageContentViewController.h"

@interface ANTVerMasPlanosVC ()

@end

@implementation ANTVerMasPlanosVC
{
    
}

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark delegate
 


// ESTABLECEMOS EL DELEGADO DEL LA VENTANA MODAL A TRAVES DE ESTE MÉTODO
-(void) setData: (id<NuevoPlanoDelegate>) unDelegado
{
    [self setDelegate: unDelegado];
}

@end
