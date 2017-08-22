//
//  InputCollector.m
//  Assignment4
//
//  Created by guilherme on 2017-08-22.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "InputCollector.h"


@implementation InputCollector

static NSString* menuString = @"What do you would like to do next\n\
                                new - Create new contact\n\
                                list - List all contact\n\
                                show - Seach for the contact using it's id\n\
                                find - Seach for the contact usgin it's name\n\
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

@end
