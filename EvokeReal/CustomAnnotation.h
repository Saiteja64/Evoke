//
//  CustomAnnotation.h
//  EvokeReal
//
//  Created by Saiteja Samudrala on 10/11/15.
//  Copyright (c) 2015 Saiteja Samudrala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>


@interface CustomAnnotation : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
}
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
- (id)initWithLocation:(CLLocationCoordinate2D)coord;

// Other methods and properties.
@end

