//
//  FactsView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 28.06.2022.
//

import SwiftUI

struct FactsView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Text("Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!")
                .padding(.leading,55)
                .padding(.trailing, 10)
                .padding(.vertical,3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")], startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(.white)
            
            Image("avocado-fact-2")
                .resizable()
                .scaledToFit()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(Capsule().stroke(.white,lineWidth: 10).frame(width: 74, height: 74, alignment: .center))
                .background(Capsule().stroke(LinearGradient(colors: [Color("ColorGreenMedium"),Color("ColorGreenLight")], startPoint: .trailing, endPoint: .leading),lineWidth: 17).frame(width: 82, height: 82, alignment: .center))
                .background(Capsule().stroke(Color("ColorAppearanceAdaptive"),lineWidth: 20)
                    .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
            
        }
    }
}



// MARK: - PREVIEW
struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView().previewLayout(.fixed(width: 400, height: 220))
    }
}
