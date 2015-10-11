//
//  ViewController1.m
//  EvokeReal
//
//  Created by Saiteja Samudrala on 2/18/15.
//  Copyright (c) 2015 Saiteja Samudrala. All rights reserved.
//

#import "ViewController1.h"
#import <MapKit/MapKit.h>

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    NSMutableArray * lats = [defaults objectForKey:@"lats"];
    NSMutableArray * longs = [defaults objectForKey:@"longs"];
    NSMutableArray * places = [defaults objectForKey:@"places"];
    NSMutableArray * strings = [defaults objectForKey:@"strings"];
    NSString * current = [defaults objectForKey:@"current"];
    _label1.text = current;
    
    MKAnnotationView * annotation = [[MKAnnotationView alloc]init];
    
    
    for(int i= 0; i < [places count]; i++)
    {
        if([current isEqualToString:[places objectAtIndex:i]])
        {
            MKPointAnnotation * point = [[MKPointAnnotation alloc]init];
            MKPinAnnotationView * annotation = [[MKPinAnnotationView alloc]init];

            _label.text = [strings objectAtIndex:i];
            NSLog(@"%@ dfajflakjf",[strings objectAtIndex:i]);
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
