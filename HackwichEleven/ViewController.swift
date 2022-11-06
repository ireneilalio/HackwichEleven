//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Irene Ilalio on 11/5/22.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    //initial location (pin)
    let initialLocation = CLLocation(latitude: 21.361888, longitude: -158.055725)
    //radius displayed
    let regionRadius = 10000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //call func centerMapLocation to center around the coordinate when app opens
    centerMapOnLocation(location: initialLocation)
        
        // Do any additional setup after loading the view.
        
        //add the restaurant and annotation(mapView)
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
        
        //Problem Set #1
        let restaurantTwo = Restaurant(title: "The Cheesecake Factory", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.334094, longitude: -158.049959))
        mapView.addAnnotation(restaurantTwo)
        
    }
    //outside of the code block of viewDidLoad add func centerMapOnLocation
    func centerMapOnLocation(location:CLLocation) {
        
        //region that puts the inital location at the center of the map
        let coordinateRegion = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: CLLocationDistance(regionRadius), longitudinalMeters: CLLocationDistance(regionRadius))
        
        mapView.setRegion(coordinateRegion, animated: true)
        
        
    }
    
}
