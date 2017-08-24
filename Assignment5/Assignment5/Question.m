//
//  Question.m
//  Assignment3
//
//  Created by guilherme on 2017-08-21.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype)init{
    self = [super init];
    if(self){
        _num1 = arc4random_uniform(100);
        _num2 = arc4random_uniform(100);
        _startTime = [NSDate date];
    }
    return self;
}

- (bool) isCorrectWith:(NSString*) answer{
    if(self.endTime == NULL) self.endTime = [NSDate date];
    
    return [[NSString stringWithFormat:@"%.02f", self.answer] isEqualToString:[NSString stringWithFormat:@"%.02f", [answer floatValue]]];
}

- (NSTimeInterval) getAnswerTime{
    return [self.endTime timeIntervalSinceDate:self.startTime];
}

@end
