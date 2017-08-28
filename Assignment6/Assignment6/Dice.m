//
//  Dice.m
//  Assignment6
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (int) roll{
    _value = arc4random_uniform(6)+1;
    return self.value;
}

@end
