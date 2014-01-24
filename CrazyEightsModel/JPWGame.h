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

- (NSNumber *)playersPlaying;
- (void)addPlayer:(JPWPlayer *)player;
- (void)draw:(JPWPlayer *)player :(JPWDeck *)deck;

@end
