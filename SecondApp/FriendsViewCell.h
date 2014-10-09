//
//  FriendsViewCell.h
//  SecondApp
//
//  Created by Daniel Rodriguez on 10/8/14.
//  Copyright (c) 2014 Daniel Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FriendsViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imgFriend;
@property (strong, nonatomic) IBOutlet UILabel *txtName;
@property (strong, nonatomic) IBOutlet UILabel *txtLastName;
@property (strong, nonatomic) IBOutlet UILabel *txtAge;

@end
