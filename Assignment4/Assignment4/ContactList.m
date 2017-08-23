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

-(Contact*)findWithContactEmail:(NSString*) email{
    for(int i=0; i<[self.contacts count]; i++){
        if([[[self getContactAtIndex:i] email] isEqualToString:email]){
            return [self getContactAtIndex:i];
        }
    }
    return NULL;
}

-(Contact*)getContactAtIndex:(NSUInteger) index{
    if([self.contacts count]>index){
        return [self.contacts objectAtIndex:index];
    }
    return NULL;
}

-(void)printContacts{
    for(int i=0; i<[[self getContacts] count]; i++){
        NSLog(@"%d: %@ (%@)", i, [[self getContactAtIndex:i]name],
              [[self getContactAtIndex:i]email]);
        for(int j=0; j<[[[self getContactAtIndex:i] phones] count]; j++){
            NSLog(@"%@: %@ %@",[[[[self getContactAtIndex:i] phones] objectAtIndex:j] label],
                  [[[[self getContactAtIndex:i] phones] objectAtIndex:j] number],
                  j==[[[self getContactAtIndex:i] phones] count]-1 ? @"\n": @"");
        }
    }
}
@end
