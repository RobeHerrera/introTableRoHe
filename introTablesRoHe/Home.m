//
//  HomeViewController.m
//  introTablesRoHe
//
//  Created by RobertoHerrera on 6/23/16.
//  Copyright © 2016 RobertoHerrera. All rights reserved.
//

#import "Home.h"

@interface Home ()
@property NSMutableArray *stuffNames;
@property NSMutableArray *stuffmgs;
@end

@implementation Home
/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/
- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//-------------------------------------------------------------------------------
- (void)initController {
   /* self.avengerNames   = [[NSMutableArray alloc] initWithObjects: @"Capitán América", @"Iron Man", @"Viuda Negra", @"Hulk", @"Thor", @"Hombre Araña", nil];
    
    self.avengerImgs   = [[NSMutableArray alloc] initWithObjects: @"captain.png", @"ironman.png", @"blackwidow.png", @"hulk.png", @"thor.png", @"spiderman.png", nil];
*/}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.avengerNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellAvengers *cell = (cellAvengers *)[tableView dequeueReusableCellWithIdentifier:@"cellAvengers"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellAvengers" bundle:nil] forCellReuseIdentifier:@"cellAvengers"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellAvengers"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = self.avengerNames[indexPath.row];
    cell.imgAvenger.image   = [UIImage imageNamed:self.avengerImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end

