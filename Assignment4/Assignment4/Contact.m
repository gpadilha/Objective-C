//
//  Contact.m
//  Assignment4
//
//  Created by guilherme on 2017-08-22.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "Contact.h"

@implementation Contact

-(instancetype)initWithName:(NSString*) name email:(NSString*) email{
    self = [super init];
    if(self){
        _name = name;
        _email = email;
    }
    return self;
}
-(void)contactPrint{
    NSLog(@"%@ (%@)\n",self.name, self.email);
}

@end
