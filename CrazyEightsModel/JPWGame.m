//
//  JPWGame.m
//  CrazyEightsModel
//
//  Created by Jeremy on 1/24/14.
//  Copyright (c) 2014 Jeremy-Walton. All rights reserved.
//

#import "JPWGame.h"

@interface JPWGame()
@property (nonatomic, strong) NSMutableArray *players;
@end

@implementation JPWGame

- (id)init {
    
    self = [super init];
    if(self) {
        _players = [NSMutableArray new];
    }
    return self;
}

- (NSNumber *)numberOfPlayers {
    return @([self.players count]);
}

- (void)addPlayer:(JPWPlayer *)player {
    [self.players addObject:player];
}

- (JPWPlayingCard *)draw:(JPWDeck *)deck {
    // need to change this method so it doesn't need to be passed a deck. first need to implement setup method.
    return [deck takeTopCard];
}

- (void)dealCards:(JPWDeck *)deck {
    // need to change this method so it doesn't need to be passed a deck. first need to implement setup method.
    if ([self.numberOfPlayers  isEqual: @2]) {
        // deal 7
        for (int i = 0; i < [self.numberOfPlayers integerValue]; i++) {
            for (int j = 0; j < 7; j++) {
                [[self.players objectAtIndex:i] addCard:[self draw:deck]];
            }
        }
    } else {
        for (int i = 0; i < [self.numberOfPlayers integerValue]; i++) {
            for (int j = 0; j < 5; j++) {
                [[self.players objectAtIndex:i] addCard:[self draw:deck]];
            }
        }

    }
}

@end
