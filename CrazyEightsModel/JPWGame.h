//
//  JPWGame.h
//  CrazyEightsModel
//
//  Created by Jeremy on 1/24/14.
//  Copyright (c) 2014 Jeremy-Walton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JPWPlayer.h"
#import "JPWDeck.h"

@interface JPWGame : NSObject

- (NSNumber *)numberOfPlayers;
- (void)addPlayer:(JPWPlayer *)player;
- (JPWPlayingCard *)draw:(JPWDeck *)deck;
// need to change this ^ method so it doesn't need to be passed a deck. first need to implement setup method.
- (void)dealCards:(JPWDeck *)deck;

@end
