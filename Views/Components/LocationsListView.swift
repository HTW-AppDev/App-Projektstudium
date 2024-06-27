//
//  LocationsListView.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 27/6/24.
//

import SwiftUI

struct LocationsListView: View {
    let districtID:Int
    
    var body: some View {
        List{
            ForEach(locationsForDistrict(districtID: districtID), id: \.name){
                location in
                VStack(alignment: .leading){
                    Text(location.name).font(.headline)
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
}

