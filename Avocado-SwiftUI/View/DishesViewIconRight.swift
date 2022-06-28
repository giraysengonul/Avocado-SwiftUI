//
//  DishesViewIconRight.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 28.06.2022.
//

import SwiftUI

struct DishesViewIconRight: View {
    // MARK: - PROPERTIES
    let iconName: String
    let title : String
    // MARK: - BODY
    var body: some View {
        HStack{
            Text(title)
            Spacer()
            Image("icon-\(iconName)")
                .resizable()
                .scaledToFit()
                .modifier(IconModifier())
        }
    }
}


// MARK: - PREVIEW
struct DishesViewIconRight_Previews: PreviewProvider {
    static var previews: some View {
        DishesViewIconRight(iconName: "guacamole", title: "Guacamole")
    }
}
