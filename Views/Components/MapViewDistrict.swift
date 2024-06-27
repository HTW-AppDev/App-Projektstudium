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



