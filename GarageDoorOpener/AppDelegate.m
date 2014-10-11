//
//  AppDelegate.m
//  GarageDoorOpener
//
//  Created by Al Wold on 10/11/14.
//  Copyright (c) 2014 Al Wold. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSUUID *uuid = [[NSUUID alloc] initWithUUIDString:@"2907f722-d803-45b7-8ec1-9f96c34d76f9"];
    CLBeaconRegion *beaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:uuid  identifier:@"Beacon"];
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    NSLog(@"start monitoring");
    [self.locationManager startMonitoringForRegion:beaconRegion];
    [self.locationManager startRangingBeaconsInRegion:beaconRegion];
    return YES;
}


@end
