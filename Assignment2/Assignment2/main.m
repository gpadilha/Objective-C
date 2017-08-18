//
//  main.m
//  Assignment2
//
//  Created by guilherme on 2017-08-18.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box1 = [[Box alloc]initWithHeight:10 width:10 length:10];
        Box *box2 = [[Box alloc]initWithHeight:20 width:20 length:20];
        NSLog(@"Volume of box1 is: %.02f", [box1 calculateVolume]);
        NSLog(@"Volume of box2 is: %.02f", [box2 calculateVolume]);
        NSLog(@"box1 fits inside box2 %d times", [box2 fitInsideWithBox:box1]);
        NSLog(@"box2 fits inside box1 %d times", [box1 fitInsideWithBox:box2]);
    }
    return 0;
}
