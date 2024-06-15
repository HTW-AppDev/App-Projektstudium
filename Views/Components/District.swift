//
//  District.swift
//  KiezKompare
//
//  Created by Hoai Linh Pham on 15/6/24.
//

import Foundation
import CoreLocation
struct District {
    var id: Int
    var name: String
    var centerCoordinate: CLLocationCoordinate2D
    var locations: [Location]
}

let mitteLocations = [
    Location(name: "Brandenburger Tor", address: "Pariser Platz, 10117 Berlin", coordinate: CLLocationCoordinate2D(latitude: 52.5163, longitude: 13.3777)),
    Location(name: "Berliner Dom", address: "Am Lustgarten, 10178 Berlin", coordinate: CLLocationCoordinate2D(latitude: 52.5186, longitude: 13.4011))
]

let districts = [
    District(id:1,name: "Mitte", centerCoordinate: CLLocationCoordinate2D(latitude: 52.5200, longitude: 13.4050), locations: mitteLocations),
    District(id:2,name: "Friedrichshain-Kreuzberg", centerCoordinate: CLLocationCoordinate2D(latitude: 52.4990, longitude: 13.4030), locations: []),
    District(id:3,name: "Pankow", centerCoordinate: CLLocationCoordinate2D(latitude: 52.5678, longitude: 13.4150), locations: []),
    District(id:4,name: "Charlottenburg-Wilmersdorf", centerCoordinate: CLLocationCoordinate2D(latitude: 52.5160, longitude: 13.3040), locations: []),
    District(id:5,name: "Spandau", centerCoordinate: CLLocationCoordinate2D(latitude: 52.5510, longitude: 13.1970), locations: []),
    District(id:6,name: "Steglitz-Zehlendorf", centerCoordinate: CLLocationCoordinate2D(latitude: 52.4382, longitude: 13.2600), locations: []),
    District(id:7,name: "Tempelhof-Schöneberg", centerCoordinate: CLLocationCoordinate2D(latitude: 52.4761, longitude: 13.3573), locations: []),
    District(id:8,name: "Neukölln", centerCoordinate: CLLocationCoordinate2D(latitude: 52.4425, longitude: 13.4270), locations: []),
    District(id:9,name: "Treptow-Köpenick", centerCoordinate: CLLocationCoordinate2D(latitude: 52.4400, longitude: 13.5800), locations: []),
    District(id:10,name: "Marzahn-Hellersdorf", centerCoordinate: CLLocationCoordinate2D(latitude: 52.5450, longitude: 13.5650), locations: []),
    District(id:11,name: "Lichtenberg", centerCoordinate: CLLocationCoordinate2D(latitude: 52.5130, longitude: 13.4990), locations: []),
    District(id:12,name: "Reinickendorf", centerCoordinate: CLLocationCoordinate2D(latitude: 52.5840, longitude: 13.2910), locations: []),
]
