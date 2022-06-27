//
//  HeaderView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 27.06.2022.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    var header : Header
    @State private var showHeadLine : Bool = false
    var slideAnimation : Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5).speed(1).delay(0.25)
    }
    // MARK: - BODY
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .scaledToFill()
            HStack (alignment: .top, spacing: 0){
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 5)
                VStack(alignment: .leading,spacing: 6) {
                    Text(header.headline)
                        .font(.system(.title,design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                    
                    Text(header.subheadline)
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
            
        }//:ZStack
        .frame(width: 480, height: 320, alignment: .center)
        .onAppear {
            showHeadLine = false
            withAnimation(slideAnimation) {
                showHeadLine = true
            }
        }
        
    }
}



// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[2]).previewLayout(.sizeThatFits)
    }
}
