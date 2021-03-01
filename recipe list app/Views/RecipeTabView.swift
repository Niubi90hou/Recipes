//
//  RecipeTabView.swift
//  recipe list app
//
//  Created by Yüksel Toprak on 01.03.21.
//

import SwiftUI

struct RecipeTabView: View {

    var body: some View {
        
        TabView {
            RecipeFeaturedView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Features")
                }
            ContentView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Recipes")
                }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
