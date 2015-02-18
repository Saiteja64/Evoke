//
//  TableViewController.h
//  EvokeReal
//
//  Created by Saiteja Samudrala on 2/18/15.
//  Copyright (c) 2015 Saiteja Samudrala. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface TableViewController : UITableViewController <CLLocationManagerDelegate>
@property (nonatomic, retain) NSMutableData *responseData;

@end
