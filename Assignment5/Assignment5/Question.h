//
//  Question.h
//  Assignment3
//
//  Created by guilherme on 2017-08-21.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString* question;
@property (assign) float answer;
@property (assign) float num1;
@property (assign) float num2;
@property (nonatomic) NSDate* startTime;
@property (nonatomic) NSDate* endTime;

- (instancetype)init;
- (bool) isCorrectWith:(NSString*) answer;
- (NSTimeInterval) getAnswerTime;

@end
