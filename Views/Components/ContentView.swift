//
//  ContentView.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 15/6/24.
//

import Foundation
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(districts, id: \.id) { district in
                NavigationLink(destination: MapViewDistrict(districtID: district.id).edgesIgnoringSafeArea(.all)) {
                    Text(district.name)
                }
            }
            .navigationTitle("Berlin Districts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*import SwiftUI
import MapKit
import Foundation

struct ContentView: View{
    @State private var region = MKCoordinateRegion(
        center:CLLocationCoordinate2D(latitude: 52.5163, longitude: 13.3777),
        span: MKCoordinateSpan(latitudeDelta:0.05, longitudeDelta: 0.05)
        )
    
    var body: some View{
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
    }
    
}

struct ContentView_Preview: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}
*/
