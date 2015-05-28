//
//  ANTCroquisTVC.h
//  Valdemanco33
//
//  Created by Antonio Diaz-Regañon Sainero on 14/07/14.
//  Copyright (c) 2014 com.antonio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ANTSectores.h"

@interface ANTCroquisTVC : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) ANTSectores *sector;
@property (strong, nonatomic) NSMutableArray *listaSectores;



@end
