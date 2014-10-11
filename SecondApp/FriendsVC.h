//
//  FriendsVC.h
//  SecondApp
//
//  Created by Daniel Rodriguez on 10/8/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendsVC : UIViewController
@property (strong, nonatomic) IBOutlet UISegmentedControl *scFriendsSwitch;
@property (strong, nonatomic) IBOutlet UITableView *tblFriends;
- (IBAction)segContFriendPressed:(id)sender;

@end
