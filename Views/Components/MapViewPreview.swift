//
//  MapViewPreview.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 15/6/24.
//


import SwiftUI
import GoogleMaps


struct MapViewPreview: PreviewProvider {
    static var previews: some View {
        MapView(locations: locations)
                    .edgesIgnoringSafeArea(.all)
    }
}

