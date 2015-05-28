//
//  ANTDeatalleVC.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 15/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTDeatalleVC.h"
#import "ANTSectores.h"
#import "ANTRisco.h"

@interface ANTDeatalleVC ()
    @property NSString *via;
@end

@implementation ANTDeatalleVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)setData:(ANTSectores *) unSectorSeleccionado
{
    self.sectorSeleccionado= unSectorSeleccionado;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    if(self)
    {
        NSLog(@"Pongo imagen ********");
        self.imagenVias.image=self.sectorSeleccionado.imagen;
    }
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)listadoViasUnRisco numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section
    return [self.sectorSeleccionado.vias count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"tableVC 7");
    static NSString *CellIdentifier = @"miCelda";
    UITableViewCell *cell = [self.listadoViasUnRisco dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    //ANTSectores * sector=nil;
    self.listaVias = self.sectorSeleccionado.vias;
    self.via=[self.listaVias  objectAtIndex:indexPath.row];
    //cell.imageView.image=self.sector.imagen;
    cell.textLabel.text=self.via;
    
    [cell.textLabel setAdjustsFontSizeToFitWidth:YES];
    cell.textLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:12.0];
    
    //cell.detailTextLabel.text=self.sectorSeleccionado.nvias;
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}




@end
