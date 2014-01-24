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

- (NSNumber *)playersPlaying {
    return @([self.players count]);
}

- (void)addPlayer:(JPWPlayer *)player {
    [self.players addObject:player];
}

- (void)draw:(JPWPlayer *)player :(JPWDeck *)deck {
    [player addCard:[deck takeTopCard]];
}

@end
