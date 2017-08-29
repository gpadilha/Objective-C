//
//  Cook.h
//  Foodtruck
//
//  Created by guilherme on 2017-08-29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "FoodTruck.h"

@interface Cook : NSObject <FoodTruckDelegate>

- (double) foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;
- (instancetype) init;

@end
