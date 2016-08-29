//
//  ViewController.h
//  Lab04
//
//  Created by Martin Leon Preciado on 22/06/16.
//  Copyright © 2016 MartinLP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Intro.h"


@interface Start : UIViewController<UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (strong,nonatomic) UIPageViewController *pageViewController;  


@end

