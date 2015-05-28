//
//  ANTSectores.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTSectores.h"

@implementation ANTSectores

-(id)initWithName:(NSString *)aName nvias:(NSString *)aNVias imagen:(UIImage *) aImagen vias:(NSArray *)aVias
{
    if(self = [super init])
    {
        _nombre = aName;
        _nvias = aNVias;
        _imagen = aImagen;
        _vias = aVias;
        
    }
    return self;
}

-(id)sectoresWithName:(NSString *)aName
                nvias:(NSString *)aNVias
               imagen:(UIImage *) aImagen
                 vias:(NSArray *)aVias
{
    
    return [self initWithName:(NSString *)aName
                                nvias:(NSString *)aNVias
                               imagen:(UIImage *)aImagen
                                 vias:(NSArray *)aVias];
    
}


@end
