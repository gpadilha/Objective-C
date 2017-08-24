//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by guilherme on 2017-08-21.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "AdditionQuestion.h"
#import "Question.h"

@implementation AdditionQuestion

- (instancetype)init{
    self = [super init];
    if(self){
        self.question = [NSString stringWithFormat:@"%.02f + %.02f", self.num1, self.num2];
        self.answer = self.num1 + self.num2;
    }
    return self;
}

@end
