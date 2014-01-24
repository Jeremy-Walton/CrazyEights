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
        [[[game playersPlaying] should] equal:@0];
        JPWPlayer *player = [JPWPlayer newWithName:@"Jeremy"];
        [game addPlayer:player];
        [[[game playersPlaying] should] equal:@1];
    });
    
    it(@"can draw a card.", ^{
        JPWPlayer *player = [JPWPlayer newWithName:@"Jeremy"];
        JPWDeck *deck = [JPWDeck new];
        [[[player numberOfCards] should] equal:@0];
        [[[deck size] should] equal:@52];
        [game addPlayer:player];
        [game draw:player :deck];
        [[[player numberOfCards] should] equal:@1];
        [[[deck size] should] equal:@51];
    });
    
    it(@"can deal to players.", ^{
        
    });
    
    it(@"can dicard a card for a player.", ^{
        
    });
    
    it(@"can determine whos turn it is.", ^{
        
    });
    
    it(@"can change the turn order.", ^{
        
    });
    
    it(@"can setup a game.", ^{
        
    });
    
});

SPEC_END
