//
//  MapViewDistrict.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 15/6/24.
//

import Foundation
import SwiftUI
import MapKit


struct MapViewDistrict: View {
    let districtID: Int
    @State private var showLocationList = false
    @State private var selectedAnnotation:MKPointAnnotation?
    var body: some View{
        VStack(spacing:0){
            MapView(districtID: districtID,showLocationList:$showLocationList).edgesIgnoringSafeArea(.top)
                .frame(height:300)
            if let annotation = selectedAnnotation {
                            VStack {
                                Text(annotation.title ?? "")
                                    .font(.headline)
                                Text(annotation.subtitle ?? "")
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                            .padding()
                        }
            if showLocationList{
                LocationsListView(districtID: districtID).transition(.move(edge:.bottom))
            }
        }
        .gesture(
            DragGesture().onEnded{ gesture in
                if gesture.translation.height > 50 {
                    withAnimation{self.showLocationList=true
                    }
                }else if gesture.translation.height < -50 {
                    withAnimation{
                        self.showLocationList=false
                    }
                }
            }
        )
    }
}

struct MapViewDistrict_Previews: PreviewProvider{
    static var previews: some View{
        MapViewDistrict(districtID: 1)
    }
}
    /*class Coordinator: NSObject, MKMapViewDelegate{
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
}*/


