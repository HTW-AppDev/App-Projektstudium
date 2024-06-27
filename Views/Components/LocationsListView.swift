//
//  LocationsListView.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 27/6/24.
//

import SwiftUI
import MapKit

struct LocationsListView: View {
    let districtID:Int
    @Binding var selectedAnnotation: MKPointAnnotation?
    var body: some View {
        List{
            ForEach(locationsForDistrict(districtID: districtID), id: \.name){
                location in
                VStack(alignment: .leading){
                    Text(location.name).font(.headline)
                        .onTapGesture {
                            if let annotation = createAnnotation(for: location) {
                                selectedAnnotation = annotation
                            }
                        }

                    Text(location.address).font(.subheadline).foregroundColor(.gray)
                }
            }
        }
        .padding(.top)
    }
    private func locationsForDistrict(districtID:Int)->[Location]{
        if let district = districts.first(where:{ $0.id == districtID}){
            return district.locations
        }else{
            return[]
        }
        
    }
    private func createAnnotation(for location: Location) -> MKPointAnnotation? {
            let annotation = MKPointAnnotation()
            annotation.coordinate = location.coordinate
            annotation.title = location.name
            annotation.subtitle = location.address
            return annotation
        }
}

