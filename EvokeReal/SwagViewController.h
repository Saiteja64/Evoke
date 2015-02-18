//
//  SwagViewController.h
//  EvokeReal
//
//  Created by Saiteja Samudrala on 3/8/14.
//  Copyright (c) 2014 Saiteja Samudrala. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SwagViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *screen;
@property int x;
@property NSMutableArray *java;
@property NSMutableArray *babu;
@property (weak, nonatomic)IBOutlet UIView*nelson;
@property (weak, nonatomic)IBOutlet UIButton*showtimes;
@property (weak, nonatomic)IBOutlet UIViewController*SwagviewController;
@property NSMutableArray * movies;
@property (weak, nonatomic) IBOutlet UIButton * vadiswag;
@property (weak, nonatomic) IBOutlet UIButton * bradiswag;
@property (strong, nonatomic) NSMutableArray *sports;
@property (strong, nonatomic) NSMutableArray *samsam;


- (IBAction)clear:(id)sender;
-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event;
- (IBAction)yes:(id)sender;

-(IBAction)boutain:(id)sender;
@end
