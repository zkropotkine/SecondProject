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
//WORK
NSMutableArray *friendWorkNames;
NSMutableArray *friendWorkSurenames;
NSMutableArray *friendWorkImages;
NSMutableArray *friendWorkAges;

// SCHOOL
NSMutableArray *friendSchoolNames;
NSMutableArray *friendSchoolSurenames;
NSMutableArray *friendSchoolImages;
NSMutableArray *friendSchoolAges;

- (void)viewDidLoad {
    [super viewDidLoad];
    //WORK
    friendWorkNames     = [NSMutableArray arrayWithObjects: @"Barto", @"Homero", @"Lisa", @"Marge", nil];
    friendWorkSurenames = [NSMutableArray arrayWithObjects: @"Simpson", @"Simpson", @"Simpson", @"Bouvier", nil];
    friendWorkAges      = [NSMutableArray arrayWithObjects: @"10", @"36", @"8", @"34", nil];
    friendWorkImages    = [NSMutableArray arrayWithObjects: @"bart.png", @"homer.png", @"lisa.png", @"marge.png", nil];
    
    // SCHOOL
    friendSchoolNames     = [NSMutableArray arrayWithObjects: @"Santa's", @"Dana", @"Bobo", nil];
    friendSchoolSurenames = [NSMutableArray arrayWithObjects: @"Helper", @"Scully", @"Burns", nil];
    friendSchoolAges      = [NSMutableArray arrayWithObjects: @"5", @"50", @"80", nil];
    friendSchoolImages    = [NSMutableArray arrayWithObjects: @"ruprecht.png", @"scully.png", @"bobo.png", nil];
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
    if (self.scFriendsSwitch.selectedSegmentIndex == 0) {
        return [friendWorkNames count];
    } else {
        return [friendSchoolNames count];
    }
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

    
    if (self.scFriendsSwitch.selectedSegmentIndex == 0) {
        cell.txtName.text = friendWorkNames[indexPath.row];
        cell.txtLastName.text =friendWorkSurenames[indexPath.row];
        cell.txtAge.text = friendWorkAges[indexPath.row];
        cell.imgFriend.image = [UIImage imageNamed:friendWorkImages[indexPath.row]];
    } else {
        cell.txtName.text = friendSchoolNames[indexPath.row];
        cell.txtLastName.text =friendSchoolSurenames[indexPath.row];
        cell.txtAge.text = friendSchoolAges[indexPath.row];
        cell.imgFriend.image = [UIImage imageNamed:friendSchoolImages[indexPath.row]];
    }

    
    return cell;
}

- (IBAction)segContFriendPressed:(id)sender {
    [self.tblFriends reloadData];
}
@end
