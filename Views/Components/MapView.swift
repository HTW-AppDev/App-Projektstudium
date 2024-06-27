//
//  MapView.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 27/6/24.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    let districtID: Int
    @Binding var showLocationList:Bool
    @State private var selectedAnnotation: MKPointAnnotation?
    
    func makeUIView(context: Context) -> MKMapView{
        let mapView = MKMapView()
        mapView.showsUserLocation = true
        mapView.delegate = context.coordinator
        
        if let selectedDistrict = districts.first(where:{ $0.id == districtID }){
            let region = MKCoordinateRegion(center:selectedDistrict.centerCoordinate,latitudinalMeters: 2000,longitudinalMeters: 2000)
            mapView.setRegion(region, animated: true)
            for location in selectedDistrict.locations{
                let annotation = MKPointAnnotation()
                annotation.coordinate = location.coordinate
                annotation.title = location.name
                annotation.subtitle = location.address
                mapView.addAnnotation(annotation)
            }
        }
        DispatchQueue.main.async {
            self.showLocationList = false
        }
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //Weitere Update
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent:MapView
        
        init(_ parent: MapView){
            self.parent = parent
        }
        
        func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView){
            if let annotation = view.annotation as? MKPointAnnotation{
                parent.selectedAnnotation = annotation
                //Die Liste wird immer beim Oeffnen zeigen
                //parent.showLocationList = true
            }
        }
        
        func mapView(_ mapView:MKMapView, didDeselect view: MKAnnotationView){
            if view.annotation as? MKPointAnnotation == parent.selectedAnnotation{
                parent.selectedAnnotation = nil            }
        }
    }
}

struct MapView_Previews: PreviewProvider{
    static var previews:some View{
        MapView(districtID: 1, showLocationList:.constant(false))
    }
}

