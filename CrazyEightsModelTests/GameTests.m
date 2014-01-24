//
//  GameTests.m
//  CrazyEightsModel
//
//  Created by Jeremy on 1/24/14.
//  Copyright (c) 2014 Jeremy-Walton. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Kiwi.h"
#import "JPWPlayer.h"
#import "JPWGame.h"
#import "JPWDeck.h"

SPEC_BEGIN(GameTests)

describe(@"Game", ^{
    __block JPWGame *game;
    
    beforeEach(^{
        game = [JPWGame new];
    });
    
    it(@"can add a player.", ^{
        [[[game numberOfPlayers] should] equal:@0];
        JPWPlayer *player = [JPWPlayer newWithName:@"Jeremy"];
        [game addPlayer:player];
        [[[game numberOfPlayers] should] equal:@1];
    });
    
    it(@"can draw a card.", ^{
        JPWPlayer *player = [JPWPlayer newWithName:@"Jeremy"];
        JPWDeck *deck = [JPWDeck new];
        [[[player numberOfCards] should] equal:@0];
        [[[deck size] should] equal:@52];
        [game addPlayer:player];
        [player addCard:[game draw:deck]];
        [[[player numberOfCards] should] equal:@1];
        [[[deck size] should] equal:@51];
    });
    
    it(@"can deal to 2 players.", ^{
        // gives 5 cards to each player or 7 if there are 2 players.
        JPWPlayer *player = [JPWPlayer newWithName:@"Jeremy"];
        JPWPlayer *player2 = [JPWPlayer newWithName:@"Sam"];
        JPWDeck *deck = [JPWDeck new];
        [game addPlayer:player];
        [game addPlayer:player2];
        [game dealCards:deck];
        [[[player numberOfCards] should] equal:@7];
        [[[player2 numberOfCards] should] equal:@7];
    });
    
    it(@"can deal to more than 2 players.", ^{
        // gives 5 cards to each player or 7 if there are 2 players.
        JPWPlayer *player = [JPWPlayer newWithName:@"Jeremy"];
        JPWPlayer *player2 = [JPWPlayer newWithName:@"Sam"];
        JPWPlayer *player3 = [JPWPlayer newWithName:@"Max"];
        JPWDeck *deck = [JPWDeck new];
        [game addPlayer:player];
        [game addPlayer:player2];
        [game addPlayer:player3];
        [game dealCards:deck];
        [[[player numberOfCards] should] equal:@5];
        [[[player2 numberOfCards] should] equal:@5];
        [[[player3 numberOfCards] should] equal:@5];
    });
    
    it(@"can setup a game.", ^{
        
    });
    
    it(@"can discard a card for a player.", ^{
        
    });
    
    it(@"can determine whos turn it is.", ^{
        
    });
    
    it(@"can change the turn order.", ^{
        
    });
    
});

SPEC_END
