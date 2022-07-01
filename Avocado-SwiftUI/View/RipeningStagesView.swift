//
//  RipeningStagesView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 26.06.2022.
//

import SwiftUI

struct RipeningStagesView: View {
     // MARK: - PROPERTIES
    
    var ripeningStages: [Ripening] = ripeningData
    
     // MARK: - BODY
    var body: some View {
        TabView{
            
            ForEach(ripeningStages){
                item in
                RipeningView(ripening: item)
            }
            
        }
        .onAppear(){
            UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color("ColorGreenMedium"));
              
           }
        
        .tabViewStyle(.page)
        
    }
}


 // MARK: - PREVIEW
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
