//
//  ViewController.swift
//  Maps
//
//  Created by Vanilson on 14/11/17.
//  Copyright © 2017 Vanilsonvl. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    var localManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        localManager.delegate = self
        localManager.desiredAccuracy = kCLLocationAccuracyBest
        localManager.requestWhenInUseAuthorization()
        localManager.startUpdatingLocation()
        
        //-23.157517, -45.792148
//        let latitude: CLLocationDegrees = -23.157517
//        let longitude: CLLocationDegrees = -45.792148
//        let deltaLatitude: CLLocationDegrees = 0.005
//        let deltaLongitude: CLLocationDegrees = 0.005
//        let visualizationArea: MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude)
//        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
//        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: visualizationArea)
//        map.setRegion(region, animated: true)
//        let annotation = MKPointAnnotation()
//        annotation.coordinate = location
//        annotation.title = "Parque Tecnológico"
//        annotation.subtitle = "CECOMPI"
//        map.addAnnotation(annotation)
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation: CLLocation = locations.last!
        let latitude: CLLocationDegrees = userLocation.coordinate.latitude
        let longitude: CLLocationDegrees = userLocation.coordinate.longitude
        let deltaLatitude: CLLocationDegrees = 0.005
        let deltaLongitude: CLLocationDegrees = 0.005
        let visualizationArea: MKCoordinateSpan = MKCoordinateSpanMake(deltaLatitude, deltaLongitude)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: visualizationArea)
        map.setRegion(region, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

