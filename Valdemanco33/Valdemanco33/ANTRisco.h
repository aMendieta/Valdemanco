//
//  ANTRisco.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ANTSectores.h"

@interface ANTRisco : NSObject

@property (nonatomic, readonly) int riscosCount;

-(ANTSectores *) sectorAtIndex:(int)index;

@end
