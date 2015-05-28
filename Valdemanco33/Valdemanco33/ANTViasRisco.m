//
//  ANTViasRisco.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 15/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTViasRisco.h"
#import "ANTVias.h"

@interface ANTViasRisco()
    @property (strong, nonatomic) NSMutableArray * ctViasRisco;
    @property (strong, nonatomic) NSMutableArray * ctVias;
@end

@implementation ANTViasRisco

#pragma mark Getters
-(int) viaCount{
    
    return [self.ctVias count];
    
}

#pragma mark Inicializador
-(id) init{
    
    if(self = [super init])
    {
        
        self.ctVias = {"AA","6a"};
        ANTVias *vAlbala1 = [ANTVias viasWithName:@"Albala" nvias:@"15" ];
        ANTVias *vAlbala2 = [ANTVias viasWithName:@"Albala" nvias:@"15" ];
        ANTVias *vCursillos = [ANTVias viasWithName:@"Albala" nvias:@"15" ];
        ANTVias *vMoai = [ANTVias viasWithName:@"Albala" nvias:@"15" ];
        ANTVias *vIsis = [ANTVias viasWithName:@"Albala" nvias:@"15" ];
        
        self.ctVias
        
        self.ctViasRisco = [NSMutableArray arrayWithObjects:vAlbala1,vAlbala2,vCursillos,vMoai,vIsis, nil];
    }
    
    return self;
    
}
#pragma mark Metodos De Clase
-(ANTSectores *) sectorAtIndex:(int)index{
    return [self.ctRiscos objectAtIndex:index];
}


@end
