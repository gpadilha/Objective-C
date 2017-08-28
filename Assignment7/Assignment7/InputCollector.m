//
//  InputCollector.m
//  Assignment7
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

+ (NSString*) getUserInputWithMessage:(NSString*) message inputSize:(int) inputSize{
    inputSize = inputSize > 0 ? inputSize : 255;
    char inputCharacters[inputSize];
    NSLog(@"%@", message);
    fgets(inputCharacters, inputSize, stdin);
    
    return [[NSString stringWithUTF8String:inputCharacters] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

+ (NSString*) getUserInputWithMessage:(NSString*) message{
    return [self getUserInputWithMessage:message inputSize:0];
}

+ (void) waitUserInputToContinue{
    printf("\nPress ENTER key to Continue\n");
    getchar();
}

@end
