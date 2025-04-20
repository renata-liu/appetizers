//
//  Appetizer.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-20.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

// Temp mock data for before network call is built
struct MockData {
    static let sampleAppetizer = Appetizer(id: 1,
                                           name: "Test Appetizer",
                                           description: "This is the description for the temporary appetizer. It is yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 100,
                                           protein: 25,
                                           carbs: 49)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
