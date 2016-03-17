//
//  MapViewViewController.m
//  DemoMaps
//
//  Created by Sebastian Gomez on 16/03/16.
//  Copyright © 2016 Sebastian Gomez. All rights reserved.
//

#import "MapViewViewController.h"
#import <GoogleMaps/GoogleMaps.h>

@interface MapViewViewController () {
    GMSMapView *mapView_;
}

@end

@implementation MapViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view = [[[NSBundle bundleForClass:[self class]] loadNibNamed:@"MapViewViewController" owner:self options:nil] firstObject];
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:0.0
                                                            longitude:0.0
                                                                 zoom:1];
    
    // Create the GMSMapView with the camera position.
    mapView_ = [GMSMapView mapWithFrame:self.mapV.bounds camera:camera];
    
    // Set the controller view to be the MapView.
    [self.mapV addSubview: mapView_];
    
    self.view = view;
    
}


- (IBAction)show:(id)sender {
    NSLog(@"hola");
}

@end
