//
//  ViewController.m
//  BeaconDemo
//
//  Created by Cornelius on 05.10.14.
//  Copyright (c) 2014 Cornelius. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize locationManager, beaconRegion, accuracyLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    locationManager = [[CLLocationManager alloc] init];
    [locationManager requestAlwaysAuthorization];
    
    NSUUID *uuid = [[NSUUID alloc] initWithUUIDString:@"B9407F30-F5F8-466E-AFF9-25556B57FE6D"];
    beaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:uuid
                                                           major:29047
                                                           minor:25256
                                                      identifier:@"myBeacon"];
    
    locationManager.delegate = self;
    
    [locationManager startRangingBeaconsInRegion:beaconRegion];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)locationManager:(CLLocationManager *)manager
        didRangeBeacons:(NSArray *)beacons
               inRegion:(CLBeaconRegion *)region {
    
    CLBeacon *beacon = [beacons firstObject];
    NSLog(@"entfernung: %f", beacon.accuracy);
    [accuracyLabel setText:[NSString stringWithFormat:@"%f m", beacon.accuracy]];
    
}

@end
