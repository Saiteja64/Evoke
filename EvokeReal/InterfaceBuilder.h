//
//  InterfaceBuilder.h
//  EvokeReal
//
//  Created by Saiteja Samudrala on 3/8/14.
//  Copyright (c) 2014 Saiteja Samudrala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InterfaceBuilder : UIViewController



@property(strong, nonatomic) NSMutableArray* bigArray;
@property  int k;
@property (weak, nonatomic) IBOutlet UIButton *shopper;

-(IBAction)masala : (id)sender;
-(IBAction)shop:(id)sender;
-(IBAction)method:(id)sender;
-(IBAction) watch:(id)sender;
-(IBAction)eat:(id)sender;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;



@end
