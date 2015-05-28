//
//  ANTViasRisco.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 15/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ANTVias.h"

@interface ANTViasRisco : NSObject

@property (nonatomic, readonly) int viasCount;

-(ANTVias *) viaAtIndex:(int)index;



@end
