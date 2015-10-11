//
//  TableViewController.m
//  EvokeReal
//
//  Created by Saiteja Samudrala on 2/18/15.
//  Copyright (c) 2015 Saiteja Samudrala. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewCell.h"


@interface TableViewController ()


@end

@implementation TableViewController {
    CLLocationManager * locationManager;
    NSDictionary * dic;
    float coordinate1;
    float coordinate2;
    NSMutableArray * places;
    NSMutableArray * strings;
    NSMutableArray * lats;
    NSMutableArray * longs;
    BOOL check;
}

- (void)viewDidLoad {
    strings = [[NSMutableArray alloc]initWithCapacity:10];
    check = false;
    places = [[NSMutableArray alloc]initWithCapacity:10];
    [super viewDidLoad];
    self.responseData = [[NSMutableData alloc]init];
    locationManager = [[CLLocationManager alloc]init];
    locationManager.delegate = self;
    locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0 &&
        [CLLocationManager authorizationStatus] != kCLAuthorizationStatusAuthorizedWhenInUse
        //[CLLocationManager authorizationStatus] != kCLAuthorizationStatusAuthorizedAlways
        ) {
        // Will open an confirm dialog to get user's approval
        [locationManager requestWhenInUseAuthorization];
        //[_locationManager requestAlwaysAuthorization];
    } else {
        [locationManager startUpdatingLocation]; //Will update location immediately
    }
    

    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"did fail with error");
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    lats = [[NSMutableArray alloc]init];
    longs = [[NSMutableArray alloc]init];
    CLLocation * newLocation = [locations lastObject];
    coordinate1 = newLocation.coordinate.longitude;
    coordinate2 = newLocation.coordinate.latitude;
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    NSString * searchString = [defaults objectForKey:@"location"];
    NSScanner * scan = [NSScanner scannerWithString:searchString];
    [scan scanUpToString:@" " intoString:&searchString];
    NSString * url = [NSString stringWithFormat:@"https://api.foursquare.com/v2/venues/search?client_id=0UWIFICFB4IGW12UMDDKOKJB5EUMVLK32GM1JTIVYYXTEETY&client_secret=HNOTTAPSJCHVJAGWVV1JY2QEUTEH4FUPFU5AD2D30W43VRGE&v=20130815&ll=%0.1f,%0.1f&query=%@",coordinate2,coordinate1,searchString];
    NSLog(url);
    NSMutableData * data = [NSMutableData data];
    NSURL * url1 = [[NSURL alloc]initWithString:url];
    NSMutableURLRequest * request = [[NSMutableURLRequest alloc]initWithURL: url1 cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval: 5];
    NSURLResponse * response = [[NSURLResponse alloc]init];
    NSError * error = [[NSError alloc]init];
    request.HTTPMethod = @"POST";
    NSURLConnection * urlconnection = [[NSURLConnection alloc]initWithRequest:request delegate:self startImmediately:false];
    [urlconnection start];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [places count];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [self.responseData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.responseData appendData:data];
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error {
    NSLog(@"Connection failed: %@", [error description]);
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    //Getting your response string
    NSError * error = [[NSError alloc]init];
    NSString *responseString = [[NSString alloc] initWithData:self.responseData encoding:NSUTF8StringEncoding];
    NSLog(@"%@",responseString);
    dic = [NSJSONSerialization JSONObjectWithData:self.responseData options:NSJSONReadingMutableContainers error:&error];
    NSMutableDictionary * idic = [dic objectForKey:@"response"];
    
    NSMutableArray * array = [idic objectForKey:@"venues"];
    

    for(int i = 0; i < 10; i++)
    {
    idic = [array objectAtIndex:i];
    NSString * string = [idic objectForKey:@"name"];
        NSMutableDictionary * string1 = [idic objectForKey:@"location"];
       
        NSString * latitude = [string1 objectForKey:@"lat"];
        NSString * longitude = [string1 objectForKey:@"lng"];
        
        NSLog(@"BUZZZZ%@",latitude);
        
        [lats addObject:latitude];
        [longs addObject:longitude];

        
        NSArray * tarray = [string1 objectForKey:@"formattedAddress"];
        NSString * string2 = [NSString stringWithFormat:@""];
        for(int k = 0; k < [tarray count]; k++)
        {
            string2 = [string2 stringByAppendingString:[tarray objectAtIndex:k]];
        }
        NSLog(string2);
    if([places count] < 10)
    {
        [strings addObject:string2];
        [places addObject:string];
    }
}
    for (NSString * string in places)
        NSLog(string);
    
    if(check != true)
    {
    [self.tableView reloadData];
        NSUserDefaults * defs = [NSUserDefaults standardUserDefaults];
        NSLog(@"crash");
        for (int i = 0; i < [strings count]; i++)
            NSLog([strings objectAtIndex:i]);
        [defs setObject:strings forKey:@"strings"];
        [defs setObject:places forKey:@"places"];
        [defs setObject:lats forKey:@"lats"];
        [defs setObject:longs forKey:@"longs"];
    
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString: @"saag"])
    {
        NSUserDefaults * defs = [NSUserDefaults standardUserDefaults];
        TableViewCell *source = (TableViewCell *)sender;
        NSLog(source.nameLabel.text);
        [defs setObject:source.nameLabel.text forKey:@"current"];
    }
}


- (void)locationManager:(CLLocationManager*)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    switch (status) {
        case kCLAuthorizationStatusNotDetermined: {
            NSLog(@"User still thinking..");
        } break;
        case kCLAuthorizationStatusDenied: {
            NSLog(@"User hates you");
        } break;
        case kCLAuthorizationStatusAuthorizedWhenInUse:
        case kCLAuthorizationStatusAuthorizedAlways: {
            [locationManager startUpdatingLocation]; //Will update location immediately
        } break;
        default:
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cells");
    
    static NSString *CellIdentifier = @"TableViewCell";
    TableViewCell *cell = (TableViewCell *)[self.tableView
                                                dequeueReusableCellWithIdentifier:CellIdentifier];
    // Configure the cell...
    if (cell == nil)
    {
        cell = [[TableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:CellIdentifier];
    }
    
    
    NSString * string = [places objectAtIndex:indexPath.row];
    
    
    // Display recipe in the table cell
    cell.nameLabel.text = string;
    
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
