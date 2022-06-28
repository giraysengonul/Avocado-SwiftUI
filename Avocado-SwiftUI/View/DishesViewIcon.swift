//
//  DishesViewIcon.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 28.06.2022.
//

import SwiftUI

struct DishesViewIcon: View {
    // MARK: - PROPERTIES
    let iconName: String
    let title : String
    
    // MARK: - BODY
    var body: some View {
        HStack{
            Image("icon-\(iconName)")
                .resizable()
                .scaledToFit()
                .modifier(IconModifier())
            Spacer()
            Text(title)
        }
    }
}


// MARK: - PREVIEW
struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}


struct DishesViewIcon_Previews: PreviewProvider {
    static var previews: some View {
        DishesViewIcon(iconName: "icon-toasts", title: "Toast")
    }
}
