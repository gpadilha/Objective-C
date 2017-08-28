//
//  GameController.m
//  Assignment6
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init{
    self = [super init];
    if(self){
        _heldDices = [NSMutableDictionary dictionary];
        _dices = [NSMutableArray array];
    }
    return self;
}

- (void) holdDice:(NSNumber*) diceId{
    if([self.heldDices objectForKey:diceId] != NULL){
        [self.heldDices removeObjectForKey:diceId];
    }else{
        [self.heldDices setObject:[self.dices objectAtIndex:[diceId integerValue]] forKey:diceId];
    }
}

- (void) rollDices{
    for(int i=0; i< [self.dices count];  i++){
        if([self.heldDices objectForKey:[NSNumber numberWithInt:i]] == NULL){
            [[self.dices objectAtIndex:i] roll];
        }
    }
}

- (void) printDices{
    NSString *dicesString = [NSString string];
    for(int i=0; i< [self.dices count];  i++){
        if([self.heldDices objectForKey:[NSNumber numberWithInt:i]] != NULL){
            [dicesString stringByAppendingString:[NSString stringWithFormat: @"[%d]-",i]];
        }else{
            [dicesString stringByAppendingString:[NSString stringWithFormat: @"%d-",i]];
        }
        [dicesString stringByAppendingString:[NSString stringWithFormat:@"%d, ", [[self.dices objectAtIndex:i] value]]];
    }
    NSLog(@"%@", dicesString);
}

@end
