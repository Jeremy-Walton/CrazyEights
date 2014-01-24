//
//  DeckTests.m
//  CrazyEightsModel
//
//  Created by Jeremy on 1/23/14.
//  Copyright (c) 2014 Jeremy-Walton. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "JPWDeck.h"
#import "Kiwi.h"
#import "JPWPlayingCard.h"

SPEC_BEGIN(DeckTests)

describe(@"Deck", ^{
    __block JPWDeck *deck;
    
    beforeEach(^{
        deck = [JPWDeck new];
    });
    
    it(@"gets initialized with 52 cards.", ^{
        [[[deck size] should] equal:@52];
    });
    
    it(@"can return a card when asked.", ^{
        [[[deck size] should] equal:@52];
        JPWPlayingCard *card1 = [deck take_top_card];
        JPWPlayingCard *card2 = [deck take_top_card];
        [[[deck size] should] equal:@50];
    });
    
    it(@"gets initialized the same way each time.", ^{
        JPWDeck *deck2 = [JPWDeck new];
        JPWPlayingCard *card1 = [deck take_top_card];
        JPWPlayingCard *card2 = [deck2 take_top_card];
        [[card1.rank should] equal:card2.rank];
        [[card1.suit should] equal:card2.suit];
    });
    
    it(@"can be shuffled.", ^{
        JPWDeck *deck2 = [JPWDeck new];
        [deck2 shuffle];
        JPWPlayingCard *card1 = [deck take_top_card];
        JPWPlayingCard *card2 = [deck2 take_top_card];
        [[card1.rank shouldNot] equal:card2.rank];
    });
    
});

SPEC_END