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
@property NSMutableArray *gamePrice;

@end


@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
     //self.tblGames.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed: @"fondo.png"]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.gameNames   = [[NSMutableArray alloc] initWithObjects: @"The Legend Of Zelda Ocarina Of Time",@"Sonic: All Stars Racing",@"The Legend Of Zelda: Majoras Mask",@"The Legend Of Zelda: A Link Between Worlds",@"The Legend Of Zelda: Triforce Heroes",@"Pokemon : Rubi Omega",@"Pokemon : Zafiro Alpha",@"Super Smash Bros 3DS",@"Mario Kart 7",@"Yoshi New island 2",nil];
    
    self.gameImgs    = [[NSMutableArray alloc] initWithObjects: @"P1.jpg",@"P2.jpg",@"P3.jpg",@"P4.jpg",@"P5.jpg",@"P6.png",@"P7.png",@"P8.png",@"P9.png",@"P10.jpg",  nil];
    
    self.gamePrice = [[NSMutableArray alloc] initWithObjects: @"1",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"100",nil];
    
    
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
    return 200;
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
    cell.lblCosto.text = self.gamePrice[indexPath.row];
    
    return cell;
}
//--------------------------------------------------------------------------------------
- (void)tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.lblSelected.text = self.gameNames[indexPath.row];
    [self performSegueWithIdentifier: @"Final" sender:self];  //Se realiza la saga llamada Window_Municipios
    
    
}

//--------------------------------------------------------------------------------------


@end
