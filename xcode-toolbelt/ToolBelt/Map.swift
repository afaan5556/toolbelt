//
//  Map.swift
//  ToolBelt
//
//  Created by Peter Kang on 5/14/16.
//  Copyright © 2016 teamToolBelt. All rights reserved.
//

import MapKit
import Alamofire


class Map: UIViewController {

    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var latitude:CLLocationDegrees = 43.095181
        
        var longitude:CLLocationDegrees = -79.006424
        
        var latDelta:CLLocationDegrees = 0.05
        
        var longDelta:CLLocationDegrees = 0.05
        
        var span: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: false)
        
    }
    
    func annotate() {
        
        var annotation = MKPointAnnotation()
        
        annotation.coordinate = location
        
        annotation.title = "Niagra Falls"
        
        annotation.subtitle = "One day..."
        
        map.addAnnotation(annotation)
    
    }
    

}
