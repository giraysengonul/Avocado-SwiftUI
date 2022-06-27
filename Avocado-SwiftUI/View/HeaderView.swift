//
//  HeaderView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 27.06.2022.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    @State private var showHeadLine : Bool = false
    var slideAnimation : Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5).speed(1).delay(0.25)
    }
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image("avocado-slice-1")
                .resizable()
                .scaledToFill()
            HStack (alignment: .top, spacing: 0){
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 5)
                VStack(alignment: .leading,spacing: 6) {
                    Text("Hello, World!")
                        .font(.system(.title,design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    
                    Text("Avocados are a powerhouse ingredient at any meal for anyone")
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                }//:VStack
                .padding(.vertical,0)
                .padding(.horizontal,20)
                .frame(width: 281, height: 105, alignment: .center)
                .background(Color("ColorBlackTransparentLight"))
            }//:HStack
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadLine ? 75 : 220)
            .animation(slideAnimation, value: showHeadLine)
            .onAppear {
                showHeadLine.toggle()
            }
        }//:ZStack
        .frame(width: 480, height: 320, alignment: .center)
    }
}



// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView().previewLayout(.sizeThatFits)
    }
}
