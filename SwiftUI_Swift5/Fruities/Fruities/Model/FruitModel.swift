//
//  FruitModel.swift
//  FruitModel
//
//  Created by Dustin Trinh on 2021-08-27.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
