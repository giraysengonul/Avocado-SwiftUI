//
//  DishesView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 28.06.2022.
//

import SwiftUI

struct DishesView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            
            VStack (alignment: .leading, spacing: 4){
                DishesViewIcon(iconName: "toasts", title: "Toast")
                Divider()
                DishesViewIcon(iconName: "tacos", title: "Tacos")
                Divider()
                DishesViewIcon(iconName: "salads", title: "Salads")
                Divider()
                DishesViewIcon(iconName: "halfavo", title: "Spreads")
            }
            
            VStack(alignment:.center,spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            VStack (alignment: .trailing, spacing: 4){
                DishesViewIconRight(iconName: "guacamole", title: "Guacamole")
                Divider()
                DishesViewIconRight(iconName: "sandwiches", title: "Sandwich")
                Divider()
                DishesViewIconRight(iconName: "soup", title: "Soup")
                Divider()
                DishesViewIconRight(iconName: "smoothies", title: "Smoothies")
            }
            
            
        }.font(.system(.callout,design: .serif))
            .foregroundColor(.gray)
            .padding(.horizontal)
            .frame(maxHeight:220)
    }
}

// MARK: - PREVIEW
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView().previewLayout(.fixed(width: 414, height: 280))
    }
}
