//
//  ANTDeatalleVC.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 15/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANTSectores.h"
#import "ANTRisco.h"

@interface ANTDeatalleVC : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imagenVias;
@property (weak, nonatomic) IBOutlet UITableView *listadoViasUnRisco;


@property (strong, nonatomic) ANTSectores *sectorSeleccionado;
@property (strong, nonatomic) NSArray *listaVias;


@end
