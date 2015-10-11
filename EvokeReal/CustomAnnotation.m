//
//  CustomAnnotation.m
//  EvokeReal
//
//  Created by Saiteja Samudrala on 10/11/15.
//  Copyright (c) 2015 Saiteja Samudrala. All rights reserved.
//

#import "CustomAnnotation.h"

@implementation CustomAnnotation
@synthesize coordinate;

- (id)initWithLocation:(CLLocationCoordinate2D)coord {
    self = [super init];
    if (self) {
        coordinate = coord;
    }
    return self;
}
@end