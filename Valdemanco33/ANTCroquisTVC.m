//
//  ANTCroquisTVC.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTCroquisTVC.h"
#import "ANTSectores.h"
#import "ANTRisco.h"
#import "ANTDeatalleVC.h"

@interface ANTCroquisTVC ()

@end

@implementation ANTCroquisTVC

- (void)viewDidLoad
{
    NSLog(@"tableVC 3");
    [super viewDidLoad];
    if(self)
    {
        NSArray *array;
         array = [NSArray arrayWithObjects:@"1- Via del 3 V+", @"2- No me hagas pensar 6a", @"3- Diosa Amat 6a", @"4- Un paseo por Valdemanco V+", @"5- Sisi V+", @"6- Chunkin express V+", @"7- Zatoichi V+", @"8- Camunas V+", @"9-Asset V+", @"10-Imhotep 6a", @"11- Doctor Adherencia V+", @"12- Josetxu 6a+", @"13- El rey de Valdemanco IV+", @"14- El pelaito de Aranda V+", @"15- Facilosis IV", nil];
        
        ANTSectores *albala1 = [[ANTSectores new]  sectoresWithName:@"Albala" nvias:@"15" imagen:[UIImage imageNamed:@"img1_albala.png"] vias: array];
        
       array = [NSArray arrayWithObjects:@"1- Caprichito 6a", @"2- Opal 6a", @"3- Atlantis V", nil];
        
        ANTSectores *moai = [[ANTSectores new] sectoresWithName:@"Moai" nvias:@"3" imagen:[UIImage imageNamed:@"img_moai.png"] vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Andamista rebelde 6a", @"2- Tania 6a", @"3- Celia 6a", nil];
        
        ANTSectores *isis = [[ANTSectores new] sectoresWithName:@"Isis" nvias:@"4" imagen:[UIImage imageNamed:@"img_isis.png"] vias:array];
        
        
        array = [NSArray arrayWithObjects:@"1- Brahaman IV", nil];
        
        ANTSectores *ptejo = [[ANTSectores new] sectoresWithName:@"Placas del Tejo" nvias:@"1" imagen:[UIImage imageNamed:@"img2_albala.png"] vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Sartori IV+",@"2- Sartenazo 6b", @"3- Shamballa 6a",@"La Maja 6a",nil];
        
        ANTSectores *scantera = [[ANTSectores new] sectoresWithName:@"Sector la Cantera" nvias:@"1" imagen:[UIImage imageNamed:@"img_cantera.png"] vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Brahaman IV", nil];
        
        ANTSectores *plagarto = [[ANTSectores new] sectoresWithName:@"Placas del Lagarto" nvias:@"1" imagen:[UIImage imageNamed:@"img_lagarto.png"] vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Este", @"2- Norte V+", nil];
        
        ANTSectores *torrevalde = [[ANTSectores new] sectoresWithName:@"Torre de Valdemanco" nvias:@"11" imagen:[UIImage imageNamed:@"img_torre.png"]vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Lo malo de hablar mucho es que mientras tanto no haces. 6a+", @"2- Tranquilamente V", @"3- Sayonara baby 6c/A0", @"4- Desire V+", @"5- Eneida 6b/A0", @"6- Harry Potta 7a", nil];
        ANTSectores *laboina = [[ANTSectores new] sectoresWithName:@"La Boina" nvias:@"7" imagen:[UIImage imageNamed:@"img_laboina.png"]vias:array];
        
         array = [NSArray arrayWithObjects:@"5- Corta pero intensa 6a", @"6- El Don de volar 7a", @"7- Antigua IV+", @"8- Siempre nos quedara Valdemanco 6b", nil];
        ANTSectores *pcuervo = [[ANTSectores new] sectoresWithName:@"Pena del Cuervo" nvias:@"5" imagen:[UIImage imageNamed:@"img_cuervo.png"]vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Mis Gorilillas IV+", @"2- Placa PR IV+",nil];
        ANTSectores *placapr = [[ANTSectores new] sectoresWithName:@"Placa PR" nvias:@"2" imagen:[UIImage imageNamed:@"img_placapr.png"]vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Fisura desconocida 6a", @"2- Abre las piernas V+", @"3- Freedompayo 6b", nil];
        ANTSectores *puntabifida = [[ANTSectores new] sectoresWithName:@"Punta Bifida" nvias:@"5" imagen:[UIImage imageNamed:@"img_puntabifida.png"]vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Via 1 IV", @"2- Via 2 IV", @"3- Via 3 IV", @"4- Via 4 IV", @"5- Via 5 IV", @"6- Via 6 IV", @"7- Via 8 IV", @"9- En busca y captura V+",@"10- Furtivos de la roca 6b", @"11- Forajidos V+", nil];
        ANTSectores *placadeloscursillos = [[ANTSectores new] sectoresWithName:@"Placa de los cursillos" nvias:@"5" imagen:[UIImage imageNamed:@"img_cursillos.png"]vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Inoogi 6a", @"2- Eien 6a+", @"3- ¡Huy! 6a+", nil];
        ANTSectores *puntaconejo = [[ANTSectores new] sectoresWithName:@"Punta Conejo" nvias:@"5" imagen:[UIImage imageNamed:@"img_puntaconejo.png"]vias:array];
        
        array = [NSArray arrayWithObjects:@"1- Cuatro sub zero 6a", @"2- Movimiento en linea 6b", @"3- Criptograma 7b", @"4- Punto y raya 6c+",@"5- Alpinismo de bordillos 6a+", nil];
        ANTSectores *sectorbosque = [[ANTSectores new] sectoresWithName:@"Sector Bosque" nvias:@"5" imagen:[UIImage imageNamed:@"img_scbosque.png"]vias:array];
        
        self.listaSectores = [NSMutableArray arrayWithObjects:albala1,moai,isis,ptejo,scantera,plagarto,torrevalde,laboina,pcuervo,placapr,puntabifida,placadeloscursillos,puntaconejo,sectorbosque, nil];
    }
}

- (void)didReceiveMemoryWarning
{
    NSLog(@"tableVC 4");
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section
    return [self.listaSectores count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"tableVC 7");
    static NSString *CellIdentifier = @"miCelda";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    //ANTSectores * sector=nil;
    
    self.sector=[self.listaSectores  objectAtIndex:indexPath.row];
    cell.imageView.image=self.sector.imagen;
    cell.textLabel.text=self.sector.nombre;
    cell.detailTextLabel.text=self.sector.nvias;
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}


#pragma mark - Navigation
// Pasar datos entre Escenas mediante Segues
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"segueDetalle"])
    {
        //ANTDeatalleVC *detalleVC = [segue destinationViewController];
        //Obtener el indice de la fila seleccionada NSIndexPath
        NSIndexPath *indexPathSeleccionado = [self.tableView indexPathForSelectedRow];
        //Obtener el producto de la fila seleccionada
        
        ANTSectores *sectorSeleccionado = [self.listaSectores objectAtIndex:indexPathSeleccionado.row];
        
        //detalleVC.sectorSeleccionado=[self.sectores objectAtIndex:indexPathSeleccionado.row];
        [segue.destinationViewController performSelector:@selector(setData:)
                                              withObject:sectorSeleccionado];
        
    }
}




@end
