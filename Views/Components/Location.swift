//
//  Location.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 15/6/24.
//

import Foundation
import Foundation
import CoreLocation

struct Location {
    var name: String
    var address: String
    var coordinate: CLLocationCoordinate2D
}

// Beispiel von einigen Orten
let locations = [
    Location(name: "Brandenburger Tor", address: "Pariser Platz, 10117 Berlin", coordinate: CLLocationCoordinate2D(latitude: 52.5163, longitude: 13.3777)),
    Location(name: "Berliner Dom", address: "Am Lustgarten, 10178 Berlin", coordinate: CLLocationCoordinate2D(latitude: 52.5186, longitude: 13.4011)),
    Location(name: "Checkpoint Charlie", address: "Friedrichstraße 43-45, 10969 Berlin", coordinate: CLLocationCoordinate2D(latitude: 52.5074, longitude: 13.3904))
]

