//
//  TimerTableViewController.m
//  SoccerTimer
//
//  Created by Russ Davis on 1/8/14.
//  Copyright (c) 2014 rtb. All rights reserved.
//

#import "TimerTableViewController.h"
#import "Player.h"

@interface TimerTableViewController ()

@end

@implementation TimerTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.players count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PlayerCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PlayerCell"];
    
    Player *player = (self.players)[indexPath.row];
    cell.playerNameTextField.text = player.name;
    [cell.timeRemainingLabel setText:[NSString stringWithFormat:@"%i:00", player.timerDefault]];
    cell.delegate = self;
    
    return cell;
}

- (void) startButtonPressed:(id)sender {
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];

    Player *player = (self.players) [indexPath.row];
    if (player.timerRunning == NO) {
        //Start Timer, Update Label
        player.timerRunning = YES;
        player.timerDefault = 2;
    } else {
        player.timerRunning = NO;
        player.timerDefault = 4;
    }
    
    [self.tableView reloadData];
    
}

- (IBAction)startAllButtonPressed:(id)sender {
}

- (IBAction)addPlayerButtonPressed:(id)sender {
    NSInteger numPlayers = [self.players count];
    numPlayers = numPlayers + 1;
    
    Player *player = [[Player alloc] init];
    player.name = [NSString stringWithFormat:@"Player %i", numPlayers];
    player.timerRunning = NO;
    player.timerDefault = 3;
    player.secRemaining = 0;
    player.minRemaining = 0;
    
    [self.players addObject:player];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:(numPlayers - 1) inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];

}


@end
