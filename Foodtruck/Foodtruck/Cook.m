//
//  Cook.m
//  Foodtruck
//
//  Created by guilherme on 2017-08-29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Cook.h"

@implementation Cook

- (instancetype) init{
    self = [super init];
    if(self){
        //nothing
    }
    return self;
}

- (double) foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    return 10.2;
}

@end
