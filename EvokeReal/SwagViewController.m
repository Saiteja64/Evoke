//
//  SwagViewController.m
//  EvokeReal
//
//  Created by Saiteja Samudrala on 3/8/14.
//  Copyright (c) 2014 Saiteja Samudrala. All rights reserved.
//

#import "SwagViewController.h"

@interface SwagViewController ()

@end
NSUserDefaults *boss;
NSMutableArray *babu;

@implementation SwagViewController


@synthesize x;
@synthesize screen;
@synthesize java;
@synthesize vadiswag;
@synthesize nelson;
@synthesize showtimes;
@synthesize bradiswag;
@synthesize movies;
@synthesize samsam;

- (IBAction)yes:(id)sender {
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:screen.text forKey:@"location"];
    [defaults synchronize];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.x =0;
    self.java = [NSMutableArray arrayWithCapacity:10];
  boss = [NSUserDefaults standardUserDefaults];
babu = [boss objectForKey:@"namaste"];
    self.samsam = [NSMutableArray arrayWithCapacity:30];
    
    for (int i=0; i<[babu count]; i++) {
        
        [samsam addObject:[babu objectAtIndex:i]];
        
    }
    
    for (int i=0; i<40; i++) {
        int b = [samsam count]-2;
        int s = arc4random() %b;
        
        NSString*jacobin = [NSString stringWithFormat:@"%@",[samsam objectAtIndex:s]];
        [samsam removeObjectAtIndex:s];
        [samsam addObject:jacobin];
    }


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)boutain:(id)sender {
    NSUserDefaults *boss = [NSUserDefaults standardUserDefaults];
    NSMutableArray *babu = [boss objectForKey:@"namaste"];
    
    
    screen.text = [babu objectAtIndex:0];

}

- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    
    
    
    if(event.type == UIEventSubtypeMotionShake)
       
    {
   
        
       
        if(x==[samsam count]-1){
            x=0;
            
        }
        
        
        screen.text = [samsam objectAtIndex:x];
        
        x++;
        
        
        
        
        
    
    }
    
            
            
    
        
    
    NSUserDefaults * bobjill = [NSUserDefaults standardUserDefaults];
    [bobjill setObject:screen.text forKey:@"jacob"];
    vadiswag.hidden = NO;
    bradiswag.hidden= NO;
    }
    
        
-(IBAction)No:(id)sender {
    
    bradiswag.hidden = YES;
    vadiswag.hidden = YES;
    screen.text=nil;
}

- (BOOL)canBecomeFirstResponder
{
    return YES;
}


- (IBAction)clear:(id)sender {
    
    screen.text = @"";
    
}

@end
