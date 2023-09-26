//
//  Item.swift
//  AppleSwiftUITutorial
//
//  Created by simorgh3196 on 2023/09/26.
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
