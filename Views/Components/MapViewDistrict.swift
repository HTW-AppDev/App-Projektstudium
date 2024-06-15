//
//  MapViewDistrict.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 15/6/24.
//

import Foundation
import SwiftUI
import GoogleMaps

struct MapViewDistrict: UIViewRepresentable {
    let districtID: Int
    func makeUIView(context: Context) -> GMSMapView {
        GMSServices.provideAPIKey("AIzaSyCIRKZQQ3lsC-mDwnkxd88P6-xN2hmiDow")
        
        var selectedDistrict: District?;
        
            for district in districts {
                if district.id == districtID {
                    selectedDistrict = district
                    break
                }
            }
        
        guard let district = selectedDistrict else {
            return GMSMapView()
        }
        
        let camera = GMSCameraPosition.camera(withLatitude: district.centerCoordinate.latitude, longitude: district.centerCoordinate.longitude, zoom: 12.0)
        let mapView = GMSMapView(frame: .zero, camera: camera)
        for location in district.locations {
                    let marker = GMSMarker()
                    marker.position = location.coordinate
                    marker.title = location.name
                    marker.snippet = location.address
                    marker.map = mapView
                }
        return mapView
    }
    
    func updateUIView(_ uiView: GMSMapView, context: Context) {}
}

