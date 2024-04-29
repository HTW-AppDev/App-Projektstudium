//
//  Item.swift
//  KiezKompare
//
//  Created by Yannick Kandulski on 29.04.24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
