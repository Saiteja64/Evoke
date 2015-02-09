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
    
    
    if (k%2 != 0) {
        
        [bigArray removeObjectsInArray:shopping];
        [shopper setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];

    }
    
    
    if (k%2 == 0) {
        [self.shopper setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    for (int i = 0; i<[shopping count]; i++) {
        
        
        NSString *x = [shopping objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
    }}
    
self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"whitesid.png"]];
    }




-(IBAction)masala:(id)sender {
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray *sports = [defaults objectForKey:@"ks"];
   
    
    for (int i = 0; i<[sports count]; i++) {
        
        
        NSString *x = [sports objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
    }
   
self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"footy.png"]];

}



-(IBAction)method:(id)sender {
        NSUserDefaults *plane = [NSUserDefaults standardUserDefaults];
    NSMutableArray *travel = [plane objectForKey:@"kd"];
    
    for (int i = 0; i<[travel count]; i++) {
        
        
        NSString *x = [travel objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
    }
self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"yellowsid.png"]];

}



    
-(IBAction) watch:(id)sender {
    
    
     NSUserDefaults *films = [NSUserDefaults standardUserDefaults];
NSMutableArray *movies = [films objectForKey:@"ka"];
    
    for (int i = 0; i<[movies count]; i++) {
        
        
        NSString *x = [movies objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
    }

self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"moviesid.png"]];

}

-(IBAction)eat:(id)sender {
    
    
    NSUserDefaults *pepper = [NSUserDefaults standardUserDefaults];
NSMutableArray *food = [pepper objectForKey:@"kr"];
    for (int i = 0; i<[food count]; i++) {
        
        
        NSString *x = [food objectAtIndex:i];
        NSLog(@"%@",x);
        [bigArray addObject:x];
        NSLog(@"%@", x);
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
