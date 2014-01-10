//
//  Player.h
//  SoccerTimer
//
//  Created by Russ Davis on 1/10/14.
//  Copyright (c) 2014 rtb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSTimer *myTicker;
@property NSInteger timerDefault;
@property NSInteger minRemaining;
@property NSInteger secRemaining;

@property BOOL timerRunning;


@end
