//
//  RecipeRatingView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 30.06.2022.
//

import SwiftUI

struct RecipeRatingView: View {
     // MARK: - PROPERTIES
    var recipe : Recipe
    
     // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating),id: \.self){
                _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}


 // MARK: - PREVIEW
struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipeData[0]).previewLayout(.fixed(width: 320, height: 60))
    }
}
