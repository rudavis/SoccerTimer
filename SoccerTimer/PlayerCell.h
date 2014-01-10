//
//  PlayerCell.h
//  SoccerTimer
//
//  Created by Russ Davis on 1/10/14.
//  Copyright (c) 2014 rtb. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PlayerCellDelegate
@optional
- (void)startButtonPressed:(id)sender;
@end

@interface PlayerCell : UITableViewCell

@property (strong, nonatomic) id delegate;
@property (weak, nonatomic) IBOutlet UITextField *playerNameTextField;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UILabel *timeRemainingLabel;
- (IBAction)start:(id)sender;

@end
