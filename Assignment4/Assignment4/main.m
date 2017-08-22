//
//  main.m
//  Assignment4
//
//  Created by guilherme on 2017-08-22.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "ContactList.h"
#import "Contact.h"

void processNewContact(ContactList* list){
    NSString* name = [InputCollector getUserInputWithMessage:@"contact name: "];
    NSString* email = [InputCollector getUserInputWithMessage:@"contact email: "];
    Contact* newContact = [[Contact alloc]initWithName:name email:email];
    [list addContact:newContact];
}

void processShow(NSString* input, ContactList* list){
    NSUInteger index = [[[input substringFromIndex:4] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] longLongValue];
    [[list getContactAtIndex:index] contactPrint];
}

void processFindByName(NSString* input, ContactList* list){
    NSString* nameToSeach = [[input substringFromIndex:4] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    Contact* result = [list findWithContactName:nameToSeach];
    if(result != NULL){
        [result contactPrint];
    }else{
        NSLog(@"There is no contact with this name");
    }

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString* userInput;
        ContactList* list = [[ContactList alloc]init];
        
        userInput = [InputCollector getUserInputWithMessage:[InputCollector getMenuString] inputSize:0];
        
        while(![userInput isEqualToString:@"quit"]){
            
            if([userInput isEqualToString:@"new"]){
                processNewContact(list);
            }else if([userInput isEqualToString:@"list"]){
                [list printContacts];
            }else if([[userInput substringToIndex:4] isEqualToString:@"show"]){
                processShow(userInput, list);
            }else if([[userInput substringToIndex:4] isEqualToString:@"find"]){
                processFindByName(userInput, list);
            }
            
            userInput = [InputCollector getUserInputWithMessage:[InputCollector getMenuString] inputSize:0];
        }
        
    }
    return 0;
}


