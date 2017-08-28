//
//  GameController.h
//  Assignment6
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic) NSMutableArray<Dice*> *dices;
@property (nonatomic) NSMutableDictionary<NSNumber*, Dice*> *heldDices;

- (instancetype)init;
- (void) rollDices;
- (void) holdDice:(NSNumber*) diceId;
- (void) printDices;
@end
