//
//  Intro.h
//  Lab04
//
//  Created by Martin Leon Preciado on 22/06/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"

@interface Intro : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *imgIntro;
@property NSUInteger iPageIndex;
@property (strong, nonatomic) IBOutlet UILabel *lblIntro;
@end
