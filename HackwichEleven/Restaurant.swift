//
//  Restaurant.swift
//  HackwichEleven
//
//  Created by Irene Ilalio on 11/5/22.
//

import UIKit
//import MapKit
import MapKit
//add MK Annotation
class Restaurant: NSObject, MKAnnotation {

    //variables to hold data
    let restaurantTitle: String
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    //initiating MK annotation
    init(title:String, type: String, coordinate: CLLocationCoordinate2D)
    {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
            return restaurantTitle
    }
}
