//
//  RecipeModel.swift
//  recipe list app
//
//  Created by Yüksel Toprak on 27.02.21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        
        self.recipes = DataService.getLocalData()
       
        
        
    }
}
