//
//  Functions.m
//  Assignment3
//
//  Created by guilherme on 2017-08-21.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "Functions.h"

@implementation Functions

+ (NSString*) getUserInputWithMessage:(NSString*) message inputSize:(int) inputSize{
    inputSize = inputSize > 0 ? inputSize : 255;
    char inputCharacters[inputSize];
    NSLog(@"%@", message);
    fgets(inputCharacters, inputSize, stdin);
    
    return [[NSString stringWithUTF8String:inputCharacters] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}


@end
