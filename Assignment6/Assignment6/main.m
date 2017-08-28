//
//  main.m
//  Assignment6
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "InputCollector.h"
#include "GameController.h"
#include "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *userInput = [NSString string];
        
        while(![userInput isEqualToString:@"quit"]){
            
            GameController *game = [[GameController alloc] init];
            Dice *d1 = [[Dice alloc] init];
            Dice *d2 = [[Dice alloc] init];
            Dice *d3 = [[Dice alloc] init];
            
            [game.dices addObject:d1];
            [game.dices addObject:d2];
            [game.dices addObject:d3];
            
            userInput = [InputCollector getUserInputWithMessage:[InputCollector getMenuString]];
            
            while(![userInput isEqualToString:@"quit"] && ![userInput isEqualToString:@"reset"]){
                
                if([userInput isEqualToString:@"reset"] || [userInput isEqualToString:@"quit"]){
                    break;
                }else if([userInput isEqualToString:@"roll"]){
                    [game rollDices];
                    [game printDices];
                }else if([[userInput substringToIndex:4] isEqualToString:@"hold"]){
                    NSNumber *diceId = [NSNumber numberWithInteger:[[[userInput substringFromIndex:4] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] integerValue]];
                    [game holdDice:diceId];
                }
                
                [InputCollector waitUserInputToContinue];
                
                userInput = [InputCollector getUserInputWithMessage:[InputCollector getMenuString]];
            }
        }
        
    }
    return 0;
}
