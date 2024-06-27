//
//  MapViewDistrictWithList.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 27/6/24.
//

import SwiftUI
import Foundation
import MapKit

struct MapViewDistrictWithList: View {
    let districtID: Int
    @State private var showListInitially = true
    @State private var selectedAnnotation: MKPointAnnotation?
    var body: some View {
        NavigationView{
            ZStack(alignment:.bottom){
                MapView(districtID: districtID, showLocationList: $showListInitially, selectedAnnotation: $selectedAnnotation).edgesIgnoringSafeArea(.all)
                    VStack{
                        Spacer()
                        if showListInitially{
                        LocationsListView(districtID: districtID,  selectedAnnotation: $selectedAnnotation)
                                .frame(height:350)
                                .background(Color.white)
                          
                            .transition(.move(edge:.bottom))
                            
                    }
                }
                    .padding(.bottom)
            }.navigationBarItems(trailing:Button(action:{
                withAnimation {
                    self.showListInitially.toggle()
                }
            }){
                Image(systemName: "list.bullet").font(.title)
            })
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}


#Preview {
    MapViewDistrictWithList(districtID: 1)
}
