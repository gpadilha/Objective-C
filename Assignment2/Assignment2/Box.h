//
//  Box.h
//  Assignment2
//
//  Created by guilherme on 2017-08-18.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

@property (assign) float height;
@property (assign) float width;
@property (assign) float length;


- (instancetype)initWithHeight:(float) height width:(float) width length:(float) length;
- (float)calculateVolume;
- (int) fitInsideWithBox:(Box*) box;

@end
