//
//  Chef.h
//  Foodtruck
//
//  Created by guilherme on 2017-08-29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"

@interface Chef : NSObject <FoodTruckDelegate>

- (instancetype)init;
- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food;

@end
