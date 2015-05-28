//
//  ANTSectores.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ANTSectores : NSObject

@property (strong,nonatomic) NSString *nombre;
@property (strong,nonatomic) NSString *nvias;
@property (strong,nonatomic) UIImage *imagen;
@property (strong,nonatomic) NSArray *vias;




-(id)initWithName:(NSString *)aName
            nvias:(NSString *)aNVias
           imagen:(UIImage *) aImagen
           vias:(NSArray *) aVias;

-(id)sectoresWithName:(NSString *)aName
                nvias:(NSString *)aNVias
               imagen:(UIImage *) aImagen
                 vias:(NSArray *) aVias;
@end
