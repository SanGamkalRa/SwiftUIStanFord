//
//  Item.swift
//  Dummy
//
//  Created by Sangam Kumar on 08/10/24.
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
