//
//  Final.m
//  Examen
//
//  Created by Martin Leon Preciado on 29/08/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import "Final.h"

@interface Final ()

@end

@implementation Final

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)Back_Home:(id)sender {
    [self performSegueWithIdentifier: @"Home" sender:self];
}

@end
