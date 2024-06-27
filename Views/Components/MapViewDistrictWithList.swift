//
//  MapViewDistrictWithList.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 27/6/24.
//

import SwiftUI
import Foundation

struct MapViewDistrictWithList: View {
    let districtID: Int
    @State private var showListInitially = true
    var body: some View {
        NavigationView{
            ZStack(alignment:.bottom){
                MapView(districtID: districtID, showLocationList: $showListInitially).edgesIgnoringSafeArea(.all)
                    VStack{
                        Spacer()
                        if showListInitially{
                        LocationsListView(districtID: districtID)
                                .frame(height:350)
                                .background(Color.white)
                            .padding()
                            .transition(.move(edge:.bottom))
                            .gesture(
                                DragGesture().onEnded
                                { gesture in
                                    if gesture.translation.height > 50 {
                                        withAnimation{
                                            self.showListInitially = false
                                        }
                                    }
                                }
                            )
                    }
                }
                    .padding(.bottom)
            }.navigationBarItems(trailing:Button(action:{
                withAnimation {
                    self.showListInitially = true
                }
            }){
                Image(systemName: "list.bullet").font(.title)
            })
            .navigationBarTitle("Berlin Districts", displayMode: .inline)
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}


#Preview {
    MapViewDistrictWithList(districtID: 1)
}
