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
        _phones = [NSMutableArray array];
    }
    return self;
}
-(void)contactPrint{
    NSLog(@"%@ (%@)",self.name, self.email);
    for(int i=0; i<[self.phones count]; i++){
        NSLog(@"%@: %@ %@",[[self.phones objectAtIndex:i] label],
              [[self.phones objectAtIndex:i] number],
              i==[self.phones count]-1 ? @"\n": @"");
    }
}

@end
