//
//  ANTRisco.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTRisco.h"
#import "ANTSectores.h"

@interface ANTRisco()
    @property (strong, nonatomic) NSMutableArray * ctRiscos;
@end

@implementation ANTRisco

#pragma mark Getters
-(int) riscosCount{
    
    return [self.ctRiscos count];
    
}

#pragma mark Inicializador
-(id) init{
    
    if(self = [super init])
    {
        ANTSectores *albala1 = [ANTSectores new];
        
        
        NSArray *array = [NSArray arrayWithObjects:@"1- Via del 3 V+", @"2- No me hagas pensar 6a", @"3- Diosa Amat 6a", @"4- Un paseo por Valdemanco V+", @"5- Sisi V+", @"6- Chunkin express V+", @"7- Zatoichi V+", @"8- Camunas V+", @"9-Asset V+", @"10-Imhotep 6a", @"11- Doctor Adherencia V+", @"12- Josetxu 6a+", @"13- El rey de Valdemanco IV+", @"14- El pelaito de Aranda V+", @"15- Facilosis IV", nil];
        
        [albala1 sectoresWithName:@"Albala" nvias:@"15" imagen:[UIImage imageNamed:@"img1_albala.png"] vias: array];
        
        
        NSArray *array2 = [NSArray arrayWithObjects:@"1- Via del 3 V+", @"2- No me hagas pensar 6a", @"3- Diosa Amat 6a", @"4- Un paseo por Valdemanco V+", @"5- Sisi V+", @"6- Chunkin express V+", @"7- Zatoichi V+",@"8- Camunas V+", @"9-Asset V+",@"10-Imhotep 6a",@"11- Doctor Adherencia V+",@"12- Josetxu 6a+",@"13- El rey de Valdemanco IV+",@"14- El pelaito de Aranda V+",@"15- Facilosis IV", nil];
        
        ANTSectores *albala2 = [[ANTSectores new] sectoresWithName:@"Albala" nvias:@"4" imagen:[UIImage imageNamed:@"img2_albala.png"] vias:array2];
        
        NSArray *array3 = [NSArray arrayWithObjects:@"1- Via del 3 V+", @"2- No me hagas pensar 6a", @"3- Diosa Amat 6a", @"4- Un paseo por Valdemanco V+", @"5- Sisi V+", @"6- Chunkin express V+", @"7- Zatoichi V+",@"8- Camunas V+", @"9-Asset V+",@"10-Imhotep 6a",@"11- Doctor Adherencia V+",@"12- Josetxu 6a+",@"13- El rey de Valdemanco IV+",@"14- El pelaito de Aranda V+",@"15- Facilosis IV", nil];
        
        ANTSectores *cursillos = [[ANTSectores new] sectoresWithName:@"Placa de los Cursillos" nvias:@"11" imagen:[UIImage imageNamed:@"img_cursillos.png"]vias:array3];
        
        
        
        NSArray *array4 = [NSArray arrayWithObjects:@"1- Via del 3 V+", @"2- No me hagas pensar 6a", @"3- Diosa Amat 6a", @"4- Un paseo por Valdemanco V+", @"5- Sisi V+", @"6- Chunkin express V+", @"7- Zatoichi V+",@"8- Camunas V+", @"9-Asset V+",@"10-Imhotep 6a",@"11- Doctor Adherencia V+",@"12- Josetxu 6a+",@"13- El rey de Valdemanco IV+",@"14- El pelaito de Aranda V+",@"15- Facilosis IV", nil];
        ANTSectores *pmoai = [[ANTSectores new] sectoresWithName:@"Punta Moai" nvias:@"5" imagen:[UIImage imageNamed:@"img_moai.png"]vias:array4];
       
        
        
        NSArray *array5 = [NSArray arrayWithObjects:@"1- Via del 3 V+", @"2- No me hagas pensar 6a", @"3- Diosa Amat 6a", @"4- Un paseo por Valdemanco V+", @"5- Sisi V+", @"6- Chunkin express V+", @"7- Zatoichi V+",@"8- Camunas V+", @"9-Asset V+",@"10-Imhotep 6a",@"11- Doctor Adherencia V+",@"12- Josetxu 6a+",@"13- El rey de Valdemanco IV+",@"14- El pelaito de Aranda V+",@"15- Facilosis IV", nil];
        ANTSectores *pisis = [[ANTSectores new] sectoresWithName:@"Punta Isis" nvias:@"5" imagen:[UIImage imageNamed:@"img_isis.png"]vias:array5];
        
        self.ctRiscos = [NSMutableArray arrayWithObjects:albala1,albala2,cursillos,pmoai,pisis, nil];
    }
    
    return self;
    
}
#pragma mark Metodos De Clase
-(ANTSectores *) sectorAtIndex:(int)index{
    return [self.ctRiscos objectAtIndex:index];
}


@end
