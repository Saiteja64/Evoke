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
@property  int j;
@property  int l;
@property  int m;
@property  int n;

@property (weak, nonatomic) IBOutlet UIButton *shopper;
@property (weak, nonatomic) IBOutlet UIButton *sportsButton;
@property (weak, nonatomic) IBOutlet UIButton *foodButton;
@property (weak, nonatomic) IBOutlet UIButton *travelButton;
@property (weak, nonatomic) IBOutlet UIButton *moviesButton;


-(IBAction)masala : (id)sender;
-(IBAction)shop:(id)sender;
-(IBAction)method:(id)sender;
-(IBAction) watch:(id)sender;
-(IBAction)eat:(id)sender;
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender;



@end
