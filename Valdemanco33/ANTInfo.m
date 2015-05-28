//
//  ANTInfo.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTInfo.h"

@implementation ANTInfo


-(id) initWithDescripcion: (NSString *)aDescripcion
                   imagen: (UIImage *)aFoto
{
    if(self = [super init]){
        _Descripcion=aDescripcion;
        _Foto=aFoto;
    }
    return self;
}

+(id) infoWithDescripcion: (NSString *)aDescripcion
                   imagen: (UIImage *)aFoto;
{
    return [[self alloc]initWithDescripcion:aDescripcion
                                     imagen:aFoto];
}

@end
