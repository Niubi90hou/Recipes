//
//  Recipe.swift
//  recipe list app
//
//  Created by Yüksel Toprak on 27.02.21.
//

import Foundation


class Recipe: Identifiable, Decodable {
    
    
    
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var highlights: [String]
    var ingredients: [ingredients]
    var directions: [String]

}

class ingredients: Identifiable, Decodable {
    
    var id:UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
}
