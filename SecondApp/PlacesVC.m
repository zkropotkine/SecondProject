//
//  PlacesVC.m
//  SecondApp
//
//  Created by Daniel Rodriguez on 10/8/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import "PlacesVC.h"
#import "PlacesViewCell.h"

@interface PlacesVC ()



@end

@implementation PlacesVC
NSMutableArray *maNames;
NSMutableArray *friendWorkImages;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    maNames =  [NSMutableArray arrayWithObjects: @"Baja California Sur", @"Chiapas", @"Guadalajara", @"Michoacan", @"Nuevo Leon", @"Quintana Roo", @"Sinaloa", @"Veracruz", nil];
    friendWorkImages    =  [NSMutableArray arrayWithObjects: @"Baja_California_Sur.png", @"Chiapas.png", @"Guadalajara.png", @"Michoacan.png", @"Nuevo_Leon.png", @"Quintana_Roo.png", @"Sinaloa.png", @"Veracruz.png", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [maNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellFamily");
    static NSString *CellIdentifier = @"PlacesCell";
    
    PlacesViewCell *cell = (PlacesViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[PlacesViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.txtPlace.text = maNames[indexPath.row];
    cell.imgPlace.image = [UIImage imageNamed:friendWorkImages[indexPath.row]];
    
    return cell;
}

@end
