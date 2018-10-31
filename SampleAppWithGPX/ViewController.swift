//
//  ViewController.swift
//  SampleAppWithGPX
//
//  Created by Romain Pouclet on 2018-10-31.
//  Copyright © 2018 Buddybuild. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    let location = CLLocationManager()

    @IBOutlet weak var map: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        map.showsUserLocation = true
        map.userTrackingMode = .follow
        map.isZoomEnabled = true
        
        location.requestWhenInUseAuthorization()
        location.delegate = self
        location.startUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Got locations!")
        locations.forEach { l in
            print("- location: \(l)")
        }
    }


}

