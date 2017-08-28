//
//  InputController.m
//  Assignment6
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

static NSString* menuString = @"What do you would like to do next\n\
                               roll - Roll not held dices\n\
                               hold - hold or un-hold dice by dice number\n\
                               reset - Start a new game\n\
                               quit - Exit application\n";

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

+ (NSString*) getMenuString{
    return menuString;
}

+(void) waitUserInputToContinue{
    printf("\nPress ENTER key to Continue\n");
    getchar();
}

@end
