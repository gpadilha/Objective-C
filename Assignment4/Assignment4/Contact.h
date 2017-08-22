//
//  Contact.h
//  Assignment4
//
//  Created by guilherme on 2017-08-22.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property (nonatomic) NSString* name;
@property (nonatomic) NSString* email;

-(instancetype)initWithName:(NSString*) name email:(NSString*) email;
-(void)contactPrint;

@end
