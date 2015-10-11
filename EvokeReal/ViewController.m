//
//  ViewController.m
//  EvokeReal
//
//  Created by Saiteja Samudrala on 3/8/14.
//  Copyright (c) 2014 Saiteja Samudrala. All rights reserved.
//

#import "ViewController.h"
#import "InterfaceBuilder.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize sports;
@synthesize movies;
@synthesize travel;
@synthesize food;
@synthesize shopping;


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.sports = [NSMutableArray arrayWithObjects:@"Tennis ?", @"Basketball ?", @"Soccer ?", @"Golf ?", nil];
    self.movies = [NSMutableArray arrayWithObjects: @"Movie ?", @"Netflix ?",@"movie studio?", nil];
    self.food = [NSMutableArray arrayWithObjects:@" Chinese Food ?", @"Indian Food? ", @"Eat Pizza ?", nil];
    self.travel = [NSMutableArray arrayWithObjects:@"Beach today?", @"Arcade today", @" National park ?", nil];
    self.shopping = [NSMutableArray arrayWithObjects:@"Supermarket ?", @"Mall ?", @"Hawker ? ", nil];
    
    /* Arrays with specific things to do. As more and more things to do get added, the arrays will be stored on a Parse backend and downloaded as needed*/
    
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"backgroun.png"]];
    //Set Background image for first View Controller
    
    //Use NSUserDefaults to store all arrays of questions to access later on and in different view controllers
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:sports forKey:@"ks"] ;
    
    [defaults setObject:movies forKey:@"ka"] ;

    [defaults setObject:food forKey:@"kr"] ;
  
    [defaults setObject:travel forKey:@"kd"] ;
    
    [defaults setObject:shopping forKey:@"kg"] ;
    
    [[NSUserDefaults standardUserDefaults] synchronize];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
