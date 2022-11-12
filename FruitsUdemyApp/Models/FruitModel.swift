//
//  FruitModel.swift
//  FruitsUdemyApp
//
//  Created by Bishwajit Purkaystha on 12/11/22.
//

import SwiftUI

// MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let gradientColors: [Color]
    let description: String
    let nutrition: [String]
}
