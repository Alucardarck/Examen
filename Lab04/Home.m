//
//  Home.m
//  Lab04
//
//  Created by Martin Leon Preciado on 23/06/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *gameNames;
@property NSMutableArray *gameImgs;
@end


@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.gameNames   = [[NSMutableArray alloc] initWithObjects: @"Super Mario RPG", @"The Legend Of Zelda", @"F-Zero", nil];
    
    self.gameImgs    = [[NSMutableArray alloc] initWithObjects: @"SNES.png", @"mario.png", @"link.png", nil];
}

/**********************************************************************************************/
#pragma mark - Table methods and delegates
/**********************************************************************************************/

- (NSInteger) numberOfSectionsInTableView: (UITableView *)tableView{
    return 1;
}
//--------------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection: (NSInteger) section
{
    return self.gameNames.count;
}
//--------------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath
{
    return 80;
}
//--------------------------------------------------------------------------------------
- (UITableViewCell *) tableView: (UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Inicializacion de celdas.
    cellGames *cell = (cellGames *) [tableView dequeueReusableCellWithIdentifier:@"cellGames"];
    
    if (cell==nil)
    {
        [tableView registerNib:[UINib nibWithNibName:@"cellGames" bundle:nil]
        forCellReuseIdentifier:@"cellGames"];
        cell= [tableView dequeueReusableCellWithIdentifier:@"cellGames"];
    }
    
    cell.lblName.text = self.gameNames[indexPath.row];
    cell.imgGames.image = [UIImage imageNamed: self.gameImgs [indexPath.row]];
    
    return cell;
}
//--------------------------------------------------------------------------------------
- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
}

//--------------------------------------------------------------------------------------
@end
