//
//  Item.swift
//  Book105-ch3
//
//  Created by Richard Dillard on 10/15/25.
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
