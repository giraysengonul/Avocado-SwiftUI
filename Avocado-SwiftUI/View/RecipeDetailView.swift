//
//  RecipeDetailView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 30.06.2022.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - PROPERTIES
    var recipe: Recipe
    @State private var pulsate: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment:.center,spacing: 0) {
                //IMAGE
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group{
                    //TITLE
                    Text(recipe.title)
                        .font(.system(.largeTitle,design: .serif))
                        .bold()
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .multilineTextAlignment(.center)
                        .padding(.top,10)
                    //RATING
                    RecipeRatingView(recipe: recipe)
                    //COOKING
                    RecipeCookingView(recipe: recipe)
                    //INGREDIENTS
                    Text("Ingredients")
                        .bold()
                        .modifier(TitleModifier())
                    VStack(alignment: .leading, spacing: 5) {
                        
                        ForEach(recipe.ingredients,id: \.self) { item in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                        }
                        
                        
                    }
                    
                    //INSTRUCTIONS
                    Text("Instuructions")
                        .bold()
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions,id: \.self){
                        item in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.body)
                                .frame(minHeight: 100)
                        }
                    }
                    
                    
                    
                }.padding(.horizontal,24)
                    .padding(.vertical,12)
                
                
                
            }//VStack
        }//Scroll
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack{
                Spacer()
                VStack{
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(pulsate ? 1 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8)
                            .animation(.easeOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
                    }
                    .padding(.trailing,20)
                    .padding(.top,24)
                    Spacer()
                    
                    
                }
                
                
                
            }
            
            
            
            
        ).onAppear {
            pulsate.toggle()
        }
    }
}


// MARK: - PREVIEW
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
