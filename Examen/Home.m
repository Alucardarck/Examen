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
    self.gameNames   = [[NSMutableArray alloc] initWithObjects: @"Super Mario RPG",@"TLoZ: A link to the past",@"Killer Instinct",@"Megaman X",@"SMB 2: Yoshi’s Island",@"Donkey Kong Country",@"Super Mario World",@"Super Metroid",@"F-Zero",@"Kirby Super Star",@"Teenage Mutant Ninja Turtles",@"Contra III: The aliens Wars",@"Street Fighter II",@"Donkey Kong Country 2",@"Super Mario Kart",@"Star Fox",@"Super Bomberman 3",nil];
    
    self.gameImgs    = [[NSMutableArray alloc] initWithObjects: @"Mario_RPG.jpeg", @"TLoz.jpeg", @"Killer.jpeg",@"Megaman.jpeg",@"Yoshi_Island.jpeg",@"Donkey_1.jpeg",@"Mario_World.jpeg",@"Metroid.jpeg",@"F_Zero.jpeg",@"Kirby.jpeg",@"Tortugas.jpeg",@"Contra.jpeg",@"Street.jpeg",@"Donkey_2.jpeg",@"Mario_Kart.jpeg",@"Fox.jpeg",@"Bomberman_3.jpeg",  nil];
    
    self.gamePrice = [[NSMutableArray alloc] initWithObjects: @"1",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"100",@"101",@"102",@"103",@"104",@"105",@"106",@"107" ,  nil];
    
    
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
