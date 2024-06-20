//
//  MapViewDistrict.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 15/6/24.
//

import Foundation
import SwiftUI
import MapKit

struct MapViewDistrict: UIViewRepresentable {
    let districtID: Int
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapViewDistrict
        
        init(parent: MapViewDistrict) {
            self.parent = parent
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation:MKAnnotation) -> MKAnnotationView{
        let identifier="marker"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier) as? MKMarkerAnnotationView
        
        if annotationView == nil{
            annotationView = MKMarkerAnnotationView(annotation:annotation,reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
        } else{
            annotationView?.annotation = annotation
        }
        return annotationView ?? MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    func makeUIView(context: Context) -> MKMapView{
        let mapView = MKMapView();
        mapView.delegate = context.coordinator
        
        var selectedDistrict:District?
        
        for district in districts {
            if district.id == districtID {
                selectedDistrict = district
                break
            }
        }
        guard let district  = selectedDistrict else{
            return mapView
        }
        
        let region = MKCoordinateRegion(center:district.centerCoordinate, latitudinalMeters: 2000,longitudinalMeters: 2000)
        mapView.setRegion(region, animated: true)
        for location in district.locations {
            let annotaion = MKPointAnnotation()
            annotaion.coordinate = location.coordinate
            annotaion.title = location.name
            annotaion.subtitle = location.address
            mapView.addAnnotation(annotaion)
        }
        return mapView
        
    }
    
    
    func updateUIView(_ uiView: MKMapView, context: Context) {}
}


