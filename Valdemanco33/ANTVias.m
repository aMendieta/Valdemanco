//
//  ANTVias.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 15/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTVias.h"

@interface ANTVias()
    @property (strong, nonatomic) NSMutableArray * ctVias;
@end

@implementation ANTVias

#pragma mark Getters
-(int) viasCount{
    
    return [self.ctVias count];
    
}


#pragma mark Metodos De Clase
-(ANTVias *) sectorAtIndex:(int)index{
    return [self.ctVias objectAtIndex:index];
}

-(id)initWithName:(NSString *)aNameVia nvias:(NSString *)aGVia
{
    if(self = [super init]){
        _nombreVia=aNameVia;
        _gradoVia=aGVia;
       
        
    }
    return self;
}

+(id)viasWithName:(NSString *)aNameVia
                nvias:(NSString *)aGVia

{
    return [[self alloc] initWithName:(NSString *)aNameVia
                                nvias: (NSString *)aGVia];
    
}

@end
