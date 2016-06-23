//
//  ViewController.h
//  introTablesRoHe
//
//  Created by RobertoHerrera on 6/23/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Declarations.h"
#import "Intro.h"

@interface Start : UIViewController <UIPageViewControllerDelegate, UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
//@property (strong, nonatomic) IBOutlet UIButton *btnSkip;
//- (IBAction)btnSkipPressed:(id)sender;

@end