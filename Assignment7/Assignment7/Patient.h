//
//  Patient.h
//  Assignment7
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HeathInsurance.h"

@interface Patient : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) HeathInsurance* insurance;

- (instancetype)initWithName:(NSString*) name andHeathInsurance:(HeathInsurance*) insurance;

@end
