//
//  ANTVias.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 15/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ANTVias : NSObject

@property (nonatomic,readonly) NSString *nombreVia;
@property (nonatomic,readonly) NSString *gradoVia;


-(id)initWithName:(NSString *)vName
            nvias:(NSString *)vGrado;


+(id)viasWithName:(NSString *)vName
                nvias:(NSString *)vGrado;


@end
