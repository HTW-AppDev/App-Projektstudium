//
//  Map.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 13.06.2024.
//
import GoogleMaps
import UIKit

struct Location:Identifiable{
    //let id = 
    let latitude: Double
    let longitude: Double
}

class Map: View{
    private var apiKey: String
    private var locations: [Location]
    init(apiKey: String, locations: [Location]) {
        self.apiKey = apiKey
        self.locations = locations
    }
   func makeUIView(context: Context) -> GMSMapView {
        GMSServices.provideAPIKey(apiKey)
        //berlin
        let camera = GMSCameraPosition.camera(withLatitude: 52.5200, longitude: 13.4050, zoom: 10.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        
        
        for location in locations {
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
            marker.map = mapView
        }
        
        return mapView
    }
    


}