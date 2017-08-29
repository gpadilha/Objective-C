//
//  Doctor.h
//  Assignment7
//
//  Created by guilherme on 2017-08-28.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescription.h"

@interface Doctor : NSObject

@property (nonatomic) NSString* specialization;
@property (nonatomic) NSString* name;

- (instancetype)initWithName:(NSString*) name andSpecialization:(NSString*) specialization;
- (bool) acceptPatient:(Patient*) patient;
- (Prescription*) requestMedicationForPatient:(Patient*) patient;

@end
