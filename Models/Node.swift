//
//  Item.swift
//  KiezKompare
//
//  Created by Yannick Kandulski on 29.04.24.
//

import Foundation
import SwiftData

@Model
final class Node {
    var id: Int64
    var latitude: Double
    var longitude: Double
    var timestamp: Date
    var tags: [String: String]
    //var category: 
    var name: String?
    var district: String?
    var address: String?
    
    init(id: Int64, latitude: Double, longitude: Double, timestamp: Date, tags: [String: String] = [:], name: String? = nil, district: String? = nil, address: String? = nil) {
        self.id = id
        self.latitude = latitude
        self.longitude = longitude
        self.timestamp = timestamp
        self.tags = tags
        self.name = name
        self.district = district
        self.address = address
    }
}

