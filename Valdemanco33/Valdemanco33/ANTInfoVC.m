//
//  ANTInfoVC.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTInfoVC.h"

@interface ANTInfoVC ()

@end

@implementation ANTInfoVC

-(id) initWithModel:(ANTInfo *)Info
{
    
    if (self = [super init]) {
        _aInfo = Info;
        self.title = @"VALDEMANCO";
        self.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"VALDEMANCO" image:[UIImage imageNamed:@"images"]selectedImage:[UIImage imageNamed:@"images"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    self.aInfo =[[ANTInfo alloc] initWithDescripcion:@"Valdemanco es una escuela de escalada  de granito situada en la sierra norte de Madrid.Predomina el grado medio. El tipo de escalada va de la adherencia típica de otras escuelas como la Pedriza a las vías más atléticas de regletas. El equipamiento general es deportivo con parabolt M10. Pero también es posible encontrar vías limpias donde necesitareis un juego de friends.Las vías no son muy largas entre 10 y 40 m. Está prohibida la acampada."
                                                 imagen:[UIImage imageNamed:@"escalando.jpeg"]];
     
}


-(void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    [self sincronizarModeloYVista];
    
}


-(void)sincronizarModeloYVista
{
    self.lblInfo.text= self.aInfo.Descripcion;
    [self.lblInfo setScrollEnabled:true];
    
    self.imgImagen.image= self.aInfo.Foto;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
