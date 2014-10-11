//
//  AppDelegate.h
//  GarageDoorOpener
//
//  Created by Al Wold on 10/11/14.
//  Copyright (c) 2014 Al Wold. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, CLLocationManagerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CLLocationManager *locationManager;

@end

