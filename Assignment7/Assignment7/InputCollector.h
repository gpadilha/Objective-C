//
//  InputCollector.h
//  Assignment7
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

+ (void) waitUserInputToContinue;
+ (NSString*) getUserInputWithMessage:(NSString*) message;
+ (NSString*) getUserInputWithMessage:(NSString*) message inputSize:(int) inputSize;

@end
