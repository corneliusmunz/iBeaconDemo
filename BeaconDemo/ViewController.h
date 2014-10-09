//
//  ViewController.h
//  BeaconDemo
//
//  Created by Cornelius on 05.10.14.
//  Copyright (c) 2014 Cornelius. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>

@property CLLocationManager *locationManager;
@property CLBeaconRegion *beaconRegion;

@property IBOutlet UILabel *accuracyLabel;

@end

