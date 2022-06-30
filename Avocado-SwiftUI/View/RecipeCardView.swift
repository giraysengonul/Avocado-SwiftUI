//
//  RecipeCardView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 30.06.2022.
//

import SwiftUI

struct RecipeCardView: View {
    // MARK: - PROPERTIES
    var recipe: Recipe
    
    
    // MARK: - BODY
    var body: some View {
        VStack (alignment: .leading, spacing: 0){
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    
                    HStack {
                        Spacer()
                        Image(systemName: "bookmark")
                            .foregroundColor(.white)
                            .font(.title.weight(.light))
                            .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
                            .padding(.trailing,20)
                            .padding(.top,22)
                    },alignment: .topTrailing
                    
                    
                )
            
            VStack(alignment: .leading, spacing: 12) {
                //TITLE
                Text(recipe.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .font(.system(.title,design: .serif))
                    .lineLimit(1)
                //HEADLINE
                Text(recipe.headline)
                    .font(.system(.body,design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                //RATES
                HStack(alignment: .center, spacing: 5) {
                    ForEach(1...(recipe.rating),id: \.self){
                        _ in
                        Image(systemName: "star.fill")
                            .font(.body)
                            .foregroundColor(.yellow)
                    }
                }
                //COOKING
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    }
                    
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }
                }
                .font(.footnote)
                .foregroundColor(.gray)
                
                
                
            }
            .padding()
            .padding(.bottom,12)
            
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}



// MARK: - PREVIEW
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0]).previewLayout(.sizeThatFits).padding()
    }
}
