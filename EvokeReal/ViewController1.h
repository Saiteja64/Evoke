//
//  ViewController1.h
//  EvokeReal
//
//  Created by Saiteja Samudrala on 2/18/15.
//  Copyright (c) 2015 Saiteja Samudrala. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController1 : UIViewController

@property (strong, nonatomic) IBOutlet UITextView *label;
@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (weak,nonatomic) IBOutlet MKMapView * maps;
@end
