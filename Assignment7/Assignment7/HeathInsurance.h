//
//  HeathInsurance.h
//  Assignment7
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Patient.h"
#include "Prescription.h"

@interface HeathInsurance : NSObject

@property (nonatomic) NSString* heathCard;
@property (nonatomic) NSMutableDictionary<Patient*, NSMutableArray<Prescription*>*>* prescriptions;

- (instancetype)initWithHeathCard:(NSString*) card;

@end
