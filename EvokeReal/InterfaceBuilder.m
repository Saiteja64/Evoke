//
//  InterfaceBuilder.m
//  EvokeReal
//
//  Created by Saiteja Samudrala on 3/8/14.
//  Copyright (c) 2014 Saiteja Samudrala. All rights reserved.
//

#import "InterfaceBuilder.h"
#import "SwagViewController.h"

@interface InterfaceBuilder ()

@end

@implementation InterfaceBuilder
@synthesize bigArray;
@synthesize k;
@synthesize shopper;

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{ if (bigArray != nil) {
    
    if ([[segue identifier] isEqualToString:@"Another Segue"])
    {
      NSUserDefaults* boss = [NSUserDefaults standardUserDefaults];
        [boss setObject:bigArray forKey:@"namaste"];
       [[NSUserDefaults standardUserDefaults] synchronize];
    } }
}


-(IBAction)shop:(id)sender {
    k++;
    
    
    NSUserDefaults * malls = [NSUserDefaults standardUserDefaults];
    NSMutableArray *shopping = [malls objectForKey:@"kg"];
    
    
    if (k%2 == 0) {
        [bigArray removeObjectsInArray:shopping];
        [shopper setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    }
    
    
    if (k%2 != 0) {
        [self.shopper setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    for (int i = 0; i<[shopping count]; i++) {
        
        
        NSString *x = [shopping objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
    }}
    
self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"chanel.png"]];
    }




-(IBAction)masala:(id)sender {
    _j++;
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *sports = [defaults objectForKey:@"ks"];
   
    if (_j%2 == 0) {
        [bigArray removeObjectsInArray:sports];
        [self.sportsButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }

    
    if (_j%2 != 0) {
        [self.sportsButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    for (int i = 0; i<[sports count]; i++) {
        
        NSString *x = [sports objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
    }
    }
   
self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"tennis.png"]];

}



-(IBAction)method:(id)sender {
    _l++;
        NSUserDefaults *plane = [NSUserDefaults standardUserDefaults];
    NSMutableArray *travel = [plane objectForKey:@"kd"];
    
    if (_l%2 == 0) {
        [bigArray removeObjectsInArray:travel];
        [self.travelButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    
    if (_l%2 != 0) {
    for (int i = 0; i<[travel count]; i++) {
        [self.travelButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        NSString *x = [travel objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
    } }
self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"travel.png"]];

}



    
-(IBAction) watch:(id)sender {
    _m++;
     NSUserDefaults *films = [NSUserDefaults standardUserDefaults];
NSMutableArray *movies = [films objectForKey:@"ka"];
    
    if (_m%2 == 0) {
        [bigArray removeObjectsInArray:movies];
        [self.moviesButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    if (_m%2 != 0) {
        [self.moviesButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    for (int i = 0; i<[movies count]; i++) {
        
        NSString *x = [movies objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
    }}

self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"moviesid.png"]];

}

-(IBAction)eat:(id)sender {
    _n++;
    NSUserDefaults *pepper = [NSUserDefaults standardUserDefaults];
NSMutableArray *food = [pepper objectForKey:@"kr"];
    
    if (_n%2 == 0) {
        [bigArray removeObjectsInArray:food];
        [_foodButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    }
    
    if (_n%2 != 0) {
        [_foodButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    for (int i = 0; i<[food count]; i++) {
        
        NSString *x = [food objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
    }
    }
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"greensid.png"]];


}
    

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
  bigArray = [[NSMutableArray alloc]init];
    k=1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
