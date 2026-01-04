//
//  Item.swift
//  optimize-my-dev-projects
//
//  Created by Antonin Leprest on 04/01/2026.
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
