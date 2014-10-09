//
//  FriendsVC.m
//  SecondApp
//
//  Created by Daniel Rodriguez on 10/8/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import "FriendsVC.h"
#import "FriendsViewCell.h"

@interface FriendsVC ()

@end

@implementation FriendsVC
NSMutableArray *maNames;
NSMutableArray *maImages;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    maNames =  [NSMutableArray arrayWithObjects: @"Baja California Sur", @"Chiapas", @"Guadalajara", @"Michoacan", @"Nuevo Leon", @"Quintana Roo", @"Sinaloa", @"Veracruz", nil];
    maImages    =  [NSMutableArray arrayWithObjects: @"Baja_California_Sur.png", @"Chiapas.png", @"Guadalajara.png", @"Michoacan.png", @"Nuevo_Leon.png", @"Quintana_Roo.png", @"Sinaloa.png", @"Veracruz.png", nil];
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
    static NSString *CellIdentifier = @"FriendsCell";
    
    FriendsViewCell *cell = (FriendsViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[FriendsViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }

    cell.txtName.text = maNames[indexPath.row];
    cell.txtLastName.text =maNames[indexPath.row];
    cell.txtAge.text = maNames[indexPath.row];
    cell.imgFriend.image = [UIImage imageNamed:maImages[indexPath.row]];
    
    return cell;
}

@end
