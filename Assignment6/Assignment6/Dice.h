//
//  Dice.h
//  Assignment6
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property (assign, readonly) int value;

- (int) roll;

@end
