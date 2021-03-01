//
//  RecipeDetailView.swift
//  recipe list app
//
//  Created by Yüksel Toprak on 27.02.21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        ScrollView {
            
           
            VStack(alignment: .leading) {
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                   
                //MARK: - Ingredients
            VStack(alignment: .leading, spacing: 0) {
                Text("Ingredients")
                    .font(.headline)
                    .padding([.bottom, .top], 5)
                ForEach(recipe.ingredients) { item in
                    Text("* " + item.name)
                        .padding(.top, 5)
                }
            }
            .padding(.horizontal)
                
            //MARK :- Directions
            VStack(alignment: .leading){
                Text("Directions")
                    .font(.headline)
                    .padding([.top, .bottom], 5)
                    
                ForEach(0..<recipe.directions.count, id:\.self) { index in
                    Text(String(index + 1) + ". " + recipe.directions[index])
                        .padding(.bottom, 5)
                }
                
            }
            .padding(.horizontal)
            
                
        }
            
            
}
        .navigationBarTitle(recipe.name)
}
}
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }

}
