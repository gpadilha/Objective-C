//
//  ScoreKeeper.h
//  Assignment3
//
//  Created by guilherme on 2017-08-21.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (assign) int correctCount;
@property (assign) int wrongCount;
- (instancetype) init;
- (NSString*) outputScore;

@end
