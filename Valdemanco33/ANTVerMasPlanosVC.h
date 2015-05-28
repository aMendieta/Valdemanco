//
//  ANTVerMasPlanosVC.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 19/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANTPlano.h"


//Paso 1: Definimos el Protocolo
@protocol NuevoPlanoDelegate <NSObject>
 
 -(void) onNuevoPlano:(ANTPlano *) unPlanoNuevo;
 
 @end




@interface ANTVerMasPlanosVC : UIViewController<UIPageViewControllerDataSource, UIPageViewControllerDelegate>



 //Propiedad de tipo Delegate <NuevoPlanoDelegate>
 @property (weak, nonatomic) id<NuevoPlanoDelegate> delegate;


@end
