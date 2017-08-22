//
//  ContactList.m
//  Assignment4
//
//  Created by guilherme on 2017-08-22.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

-(instancetype)init{
    self = [super init];
    if(self){
        _contacts = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)addContact:(Contact*) newContact{
    [self.contacts addObject:newContact];
}

-(Contact*)findWithContactName:(NSString*) name{
    for(int i=0; i<[self.contacts count]; i++){
        if([[[self getContactAtIndex:i] name] isEqualToString:name]){
            return [self getContactAtIndex:i];
        }
    }
    return NULL;
}

-(Contact*)getContactAtIndex:(NSUInteger) index{
    return [self.contacts objectAtIndex:index];
}

-(void)printContacts{
    for(int i=0; i<[[self getContacts] count]; i++){
        NSLog(@"%d: %@ (%@)\n", i, [[self getContactAtIndex:i]name],
              [[self getContactAtIndex:i]email]);
    }
}
@end
