//
//  Box.m
//  Assignment2
//
//  Created by guilherme on 2017-08-18.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithHeight:(float) height width:(float) width length:(float) length{
    self = [super init];
    if(self){
        self.height = height;
        self.width = width;
        self.length = length;
    }
    return self;
}

- (float)calculateVolume{
    return self.height * self.width * self.length;
}

- (int) fitInsideWithBox:(Box*) box{
    if([self calculateVolume] < [box calculateVolume]){
        return 0;
    }
    return [self calculateVolume] / [box calculateVolume];
}

@end
