//
//  ANTListadoNoticiasViewController.m
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 18/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import "ANTListadoNoticiasViewController.h"
#import "ANTCeldaVCCell.h"
#import "ANTDetalleNoticiaVCViewController.h"

@interface ANTListadoNoticiasViewController ()

@property NSMutableArray *feeds;
@property NSMutableArray *item;
@property NSMutableString *link;
@property NSMutableString *descripcion;
@property NSMutableString *pubDate;
@property NSMutableString *elementTitle;
@property NSMutableString *id;
@property NSString * element;

@end

@implementation ANTListadoNoticiasViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.item    = [[NSMutableArray alloc] init];
    
    
	// Do any additional setup after loading the view.
    [self ObtenerImagenAsincronaWith:^(UIImage *imagenParam) {
        //self.imgFotoOnline.image = imagenParam;
    }];
}


-(void) ObtenerImagenAsincronaWith: (void (^)(UIImage * imagenParam))bloqueFinalizacion {
    
    dispatch_queue_t descargaSegundoPlano =
    dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    __block NSData *imgData = nil;
    __block UIImage *imagen = nil;
    
    
    //Mandamos el bloque de descargar a segundo plano
    
    dispatch_async(descargaSegundoPlano, ^{
        
        
        
        NSURL * url =
        [NSURL URLWithString:@"http://desnivel.com/services/rss?seccion=escalada-roca"];
        
        imgData = [NSData dataWithContentsOfURL:url];
        
        
        
        //Aqui ejecutamos el bloque de finalizacion que viene como parametro
        dispatch_async(dispatch_get_main_queue(), ^{
            
            NSXMLParser *parser = [[NSXMLParser alloc]initWithData:imgData];
            parser.delegate = self;
            [parser parse];
            
           // imagen = [UIImage imageWithData:imgData];
            bloqueFinalizacion(imagen);
            
        });
        
        
        
    });
    
    
    
    
}
//******************************************************************************************************
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict {
    
    self.element = elementName;
    
    if ([self.element isEqualToString:@"item"]) {
        
        
        self.link    = [[NSMutableString alloc] init];
        self.elementTitle   = [[NSMutableString alloc] init];
        self.descripcion   = [[NSMutableString alloc] init];
        
        
        
    }
    
}
- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    if ([self.element isEqualToString:@"title"]) {
        [self.elementTitle appendString:string];
    } else if ([self.element isEqualToString:@"link"]) {
        [self.link appendString:string];
    } else if ([self.element isEqualToString:@"description"]) {
        [self.descripcion appendString:string];
    }
}

- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    
    if ([elementName isEqualToString:@"item"]) {
        
        NSDictionary *tempDict = @{@"title": self.elementTitle,
                                   @"link" : self.link,
                                   @"descripcion" : self.descripcion};
        
        [self.item addObject:tempDict];
        //[self.item setObject:self.link forKey:@"link"];
        
        [self.feeds addObject:[self.item copy]];
        
    }
    
}
- (void)parserDidEndDocument:(NSXMLParser *)parser {
    
    [self.listadoNoticias reloadData];
    
}
//******************************************************************************************************

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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section
    return [self.item count];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 135.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"tableVC 7");
    static NSString *CellIdentifier = @"miCelda";
    ANTCeldaVCCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[ANTCeldaVCCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    //extraer el nsdictionary
    NSDictionary  *d = self.item[indexPath.row];
    cell.lblTitulo.text = d[@"title"];
    [cell.webView loadHTMLString:(NSString *)d[@"descripcion"] baseURL:nil];
    cell.webView.opaque = NO;
    

    return cell;
}


#pragma mark - Navigation
// Pasar datos entre Escenas mediante Segues
- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"segueNoticia"])
    {
        ANTDetalleNoticiaVCViewController *detalleNoticiaVC = [segue destinationViewController];
        //Obtener el indice de la fila seleccionada NSIndexPath
        NSIndexPath *indexPathSeleccionado = [self.listadoNoticias indexPathForSelectedRow];
        //Obtener el producto de la fila seleccionada
        
        //ANTSectores *sectorSeleccionado = [self.listaSectores objectAtIndex:indexPathSeleccionado.row];
        NSDictionary  *d = self.item[indexPathSeleccionado.row];
       
        detalleNoticiaVC.urlDetalleNoticia = (NSString *)d[@"link"];
        //[segue.destinationViewController performSelector:@selector(setData:)
        //                                      withObject:sectorSeleccionado];
        
    }
}



@end
