//
//  Chef.m
//  Foodtruck
//
//  Created by guilherme on 2017-08-29.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Chef.h"

@implementation Chef

- (instancetype)init{
    self = [super init];
    return self;
}

- (double) foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food{
    if([food isEqualToString:@"bao"]){
        return 5.12;
    }else if([food isEqualToString:@"shortbread"]){
        return 3.80;
    }
    return 2.10;
}

@end
