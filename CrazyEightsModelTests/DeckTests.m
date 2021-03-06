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
        JPWPlayingCard *card1 = [deck takeTopCard];
        JPWPlayingCard *card2 = [deck takeTopCard];
        [[[deck size] should] equal:@50];
    });
    
    it(@"gets initialized the same way each time.", ^{
        JPWDeck *deck2 = [JPWDeck new];
        for (int i = 0; i < [[deck size] integerValue]; i++) {
            JPWPlayingCard *card1 = [deck takeTopCard];
            JPWPlayingCard *card2 = [deck2 takeTopCard];
            NSMutableArray *rankSuit1 = [NSMutableArray new];
            [rankSuit1 addObject:card1.rank];
            [rankSuit1 addObject:card1.suit];
            NSMutableArray *rankSuit2 = [NSMutableArray new];
            [rankSuit2 addObject:card2.rank];
            [rankSuit2 addObject:card2.suit];
            [[rankSuit1 should] equal:rankSuit2];
        }
    });
    
    it(@"can be shuffled.", ^{
        JPWDeck *deck2 = [JPWDeck new];
        
        [deck2 shuffle];
        
        for (int i = 0; i < [[deck size] integerValue]; i++) {
            JPWPlayingCard *card1 = [deck takeTopCard];
            JPWPlayingCard *card2 = [deck2 takeTopCard];
            NSMutableArray *rankSuit1 = [NSMutableArray new];
            [rankSuit1 addObject:card1.rank];
            [rankSuit1 addObject:card1.suit];
            NSMutableArray *rankSuit2 = [NSMutableArray new];
            [rankSuit2 addObject:card2.rank];
            [rankSuit2 addObject:card2.suit];
            [[rankSuit1 shouldNot] equal:rankSuit2];
        }
    });
    
});

SPEC_END