iBeaconDemo
===========

Obj-C Demo Code to range a iBeacon and show the accuracy value on the iOS device

To run the code you have to adapt the iBeacon parameters (uuid, major-id, minor-id) that it fits to your iBeacon. The adaption has to be done in the ViewController.m file where the BeaconRegion is specified:

    NSUUID *uuid = [[NSUUID alloc] initWithUUIDString:@"<yourUUID>"];
    beaconRegion = [[CLBeaconRegion alloc] initWithProximityUUID:uuid
                                                           major:<Major-ID>
                                                           minor:<Minor-ID>
                                                      identifier:@"myBeacon"];
