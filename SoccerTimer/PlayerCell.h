//
//  PlayerCell.h
//  SoccerTimer
//
//  Created by Russ Davis on 1/10/14.
//  Copyright (c) 2014 rtb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayerCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UITextField *playerNameTextField;
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UILabel *timeRemainingLabel;

- (IBAction)playerStartButtonPressed:(id)sender;

@end
