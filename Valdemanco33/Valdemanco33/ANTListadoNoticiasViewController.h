//
//  ANTListadoNoticiasViewController.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 18/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ANTListadoNoticiasViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,NSXMLParserDelegate>

@property (weak, nonatomic) IBOutlet UITableView *listadoNoticias;


@end
