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
    NSString *email = [InputCollector getUserInputWithMessage:@"contact email: "];
    if([list findWithContactEmail:email] == NULL){
        NSString *name = [InputCollector getUserInputWithMessage:@"contact name: "];
        Contact *newContact = [[Contact alloc]initWithName:name email:email];
        
        NSString *label;
        label = [InputCollector getUserInputWithMessage:@"Type the label for the phone numbe or 'finish' to finish the contact adding"];
        while(![label isEqualToString:@"finish"]){
            Phone *phone = [[Phone alloc] init];
            phone.label = label;
            phone.number = [InputCollector getUserInputWithMessage:@"Phone number:"];
            [newContact.phones addObject:phone];
            
            label = [InputCollector getUserInputWithMessage:@"Type the label for the phone numbe or 'finish' to finish the contact adding"];
        }
        
        [list addContact:newContact];
    }else{
        NSLog(@"Already exist a contact with this email");
    }
}

void processShow(NSString* input, ContactList* list){
    NSUInteger index = [[[input substringFromIndex:4] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] longLongValue];
    Contact *result = [list getContactAtIndex:index];
    if(result != NULL){
        [result contactPrint];
    }else{
        NSLog(@"There is no contact with this id");
    }
}

void processFindByName(NSString* input, ContactList* list){
    NSString *nameToSeach = [[input substringFromIndex:4] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    Contact *result = [list findWithContactName:nameToSeach];
    if(result != NULL){
        [result contactPrint];
    }else{
        NSLog(@"There is no contact with this name");
    }

}

void processPrintHistory(NSMutableArray* log){
    for(long i=[log count]-1; i>[log count]-4 && i>=0; i--){
        NSLog(@"%@\n", [log objectAtIndex:i]);
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *userInput;
        NSMutableArray *log = [[NSMutableArray alloc]init];
        ContactList *list = [[ContactList alloc]init];
        
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
            }else if([userInput isEqualToString:@"history"]){
                processPrintHistory(log);
            }
            
            [log addObject:userInput];
            
            [InputCollector waitUserInputToContinue];
            
            userInput = [InputCollector getUserInputWithMessage:[InputCollector getMenuString] inputSize:0];
        }
        
    }
    return 0;
}


