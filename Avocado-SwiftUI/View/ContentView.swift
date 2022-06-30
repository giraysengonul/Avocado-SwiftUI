//
//  ContentView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 26.06.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var headers : [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipeData
    // MARK: - BODY
    var body: some View {
        
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }//:HStack
                    
                }//:Scroll
                // MARK: - DISHES VIEW
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth : 640)
                // MARK: - AVOCADO FACTS
                Text("Avocado Facts")
                    .bold()
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts){
                            item in
                            FactsView(fact: item)
                        }
                    }.padding(.vertical)
                        .padding(.leading,60)
                        .padding(.trailing,20)
                }
                // MARK: - RECIPE CARDS
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes){item in
                        RecipeCardView(recipe: item)
                        
                    }
                }.frame(maxWidth: 640).padding(.horizontal)
                
                // MARK: - FOOTER
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                }//:VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom,85)
            }//:VStack
        }//:Scroll
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title,design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
    
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData,facts: factsData,recipes: recipeData)
    }
}
