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
@property NSMutableArray *stuffImgs;
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
    self.stuffNames   = [[NSMutableArray alloc] initWithObjects: @"Anillos", @"Aretes", @"Collares", @"Dijes", @"Esclavas", @"Juegos", nil];
    
    self.stuffImgs   = [[NSMutableArray alloc] initWithObjects: @"anillos.jpg", @"aretes.jpg", @"collares.jpg", @"dije.jpg", @"esclava.jpg", @"anillos.jpg", nil];
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.stuffNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellAmande *cell = (cellAmande *)[tableView dequeueReusableCellWithIdentifier:@"cellAmande"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellAmande" bundle:nil] forCellReuseIdentifier:@"cellAmande"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellAmande"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = self.stuffNames[indexPath.row];
    cell.imgAmande.image   = [UIImage imageNamed:self.stuffImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.lblItemSelect.hidden = NO;
    self.lblItemSelect.text = self.stuffNames[indexPath.row];
}

@end

