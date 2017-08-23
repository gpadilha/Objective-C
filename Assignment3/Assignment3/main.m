//
//  main.m
//  Assignment3
//
//  Created by guilherme on 2017-08-21.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Functions.h"
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!");
        NSString *userAnswer;
        ScoreKeeper *scoreK = [[ScoreKeeper alloc]init];
        
        while(true){
            AdditionQuestion *add1 = [[AdditionQuestion alloc]init];
            userAnswer = [Functions getUserInputWithMessage:add1.question inputSize:0];
            
            if([userAnswer isEqualToString:@"quit"]) break;
            
            NSLog(@"%@", [add1 isCorrectWith:userAnswer] ? @"Right!" : @"Wrong!");
            if([add1 isCorrectWith:userAnswer]){
                scoreK.correctCount++;
            }else{
                scoreK.wrongCount++;
            }
        }
        NSLog(@"%@", [scoreK outputScore]);
    }
    return 0;
}
