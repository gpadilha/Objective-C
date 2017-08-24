//
//  ScoreKeeper.m
//  Assignment3
//
//  Created by guilherme on 2017-08-21.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init{
    self = [super self];
    if(self) {
        self.correctCount = 0;
        self.wrongCount = 0;
    }
    return self;
}
- (NSString*) outputScore{
    return [NSString stringWithFormat:@"score: %d right, %d wrong --- %.02f%%", self.correctCount, self.wrongCount, (float)self.correctCount / (self.correctCount+self.wrongCount) * 100];
}

@end
