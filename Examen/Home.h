//
//  Home.h
//  Lab04
//
//  Created by Martin Leon Preciado on 23/06/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellGames.h"
#import "Declarations.h"

@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblGames;
@property (strong, nonatomic) IBOutlet UILabel *lblSelected;

@end
