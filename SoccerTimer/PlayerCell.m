//
//  PlayerCell.m
//  SoccerTimer
//
//  Created by Russ Davis on 1/10/14.
//  Copyright (c) 2014 rtb. All rights reserved.
//

#import "PlayerCell.h"

@implementation PlayerCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)playerStartButtonPressed:(id)sender {
    if ([_startButton.titleLabel.text isEqualToString: @"Start"]) {
        _startButton.titleLabel.text = @"Pause";
    } else {
        _startButton.titleLabel.text = @"Start";
    }
    
}
@end
