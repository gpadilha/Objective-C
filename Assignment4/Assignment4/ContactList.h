//
//  ContactList.h
//  Assignment4
//
//  Created by guilherme on 2017-08-22.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject

@property (readonly, getter=getContacts) NSMutableArray* contacts;

-(instancetype)init;
-(void)addContact:(Contact*) newContact;
-(Contact*)findWithContactName:(NSString*) name;
-(Contact*)getContactAtIndex:(NSUInteger) index;
-(void)printContacts;

@end
