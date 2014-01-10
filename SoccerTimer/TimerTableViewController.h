//
//  TimerTableViewController.h
//  SoccerTimer
//
//  Created by Russ Davis on 1/8/14.
//  Copyright (c) 2014 rtb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerCell.h"

@interface TimerTableViewController : UITableViewController <PlayerCellDelegate>

@property (nonatomic, strong) NSMutableArray *players;

- (IBAction)startAllButtonPressed:(id)sender;
- (IBAction)addPlayerButtonPressed:(id)sender;

@end
