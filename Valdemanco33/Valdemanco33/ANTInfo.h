//
//  ANTInfo.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ANTInfo : NSObject

@property (strong, nonatomic) NSString * Descripcion;
@property (strong, nonatomic) UIImage * Foto;


-(id) initWithDescripcion: (NSString *)aDescripcion
                   imagen: (UIImage *)aFoto;

+(id) infoWithDescripcion: (NSString *)aDescripcion
                   imagen: (UIImage *)aFoto;


@end
