//
//  PlayerTests.m
//  CrazyEightsModel
//
//  Created by Jeremy on 1/24/14.
//  Copyright (c) 2014 Jeremy-Walton. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Kiwi.h"
#import "JPWPlayingCard.h"
#import "JPWPlayer.h"

SPEC_BEGIN(PlayerTests)

describe(@"Player", ^{
    __block JPWPlayer *player;
    
    beforeEach(^{
        player = [JPWPlayer newWithName:@"Jeremy"];
    });
    
    it(@"can count how many cards it has.", ^{
        [[[player numberOfCards] should] equal:@0];
    });
    
    it(@"has a name.", ^{
        [[[player name] should] equal:@"Jeremy"];
    });
    
    it(@"can have cards added to it.", ^{
        JPWPlayingCard *card = [JPWPlayingCard newWithRank:@"A" suit:@"S"];
        [[[player numberOfCards] should] equal:@0];
        [player addCard:card];
        [[[player numberOfCards] should] equal:@1];
    });
    
    it(@"can have a card removed from it.", ^{
        JPWPlayingCard *card = [JPWPlayingCard newWithRank:@"A" suit:@"S"];
        [player addCard:card];
        [[[player numberOfCards] should] equal:@1];
        JPWPlayingCard *card2 = [player removeCard:card];
        [[[player numberOfCards] should] equal:@0];
        [[card2.rank should] equal:card.rank];
        [[card2.suit should] equal:card.suit];
    });

});

SPEC_END