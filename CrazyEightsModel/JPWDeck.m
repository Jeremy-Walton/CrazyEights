//
//  JPWDeck.m
//  CrazyEightsModel
//
//  Created by Jeremy on 1/23/14.
//  Copyright (c) 2014 Jeremy-Walton. All rights reserved.
//

#import "JPWDeck.h"
#import "JPWPlayingCard.h"

@interface JPWDeck()
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation JPWDeck

- (id)init {
    
    self = [super init];
    if(self) {
        [self createCards];
    }
    return self;
}

- (void)createCards {
    self.cards = [NSMutableArray new];
    for (NSString *rank in [JPWDeck ranks]) {
        for (NSString *suit in [JPWDeck suits]) {
            [self.cards addObject:[JPWPlayingCard newWithRank:rank suit:suit]];
        }
    }
}

+ (NSArray *)ranks {
    return @[@"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K", @"A"];
}

+ (NSArray *)suits {
    return @[@"h", @"s", @"d", @"c"];
}

- (NSNumber *)size {
    return @([self.cards count]);
}

- (JPWPlayingCard *)takeTopCard {
    JPWPlayingCard *card;
    card = [self.cards lastObject];
    [self.cards removeLastObject];
    return card;
}

- (void)shuffle {
   
    for (int i = 0; i < [[self size] integerValue]; i++) {
        NSUInteger switch_index = arc4random_uniform([[self size] integerValue]);
        [self.cards exchangeObjectAtIndex:i withObjectAtIndex:switch_index];
    }
    
}

@end
