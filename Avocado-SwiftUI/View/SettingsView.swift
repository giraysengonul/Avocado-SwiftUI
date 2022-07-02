//
//  SettingsView.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 26.06.2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            // MARK: - HEADER
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("Avocados".uppercased())
                    .font(.system(.title,design: .serif))
                    .bold()
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }//:VStack
            .padding()
            
            Form{
                
                // MARK: - SECTION #1
                Section {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notifiacation")
                    }
                } header: {
                    Text("General Settings")
                }
                Toggle(isOn: $backgroundRefresh) {
                    Text("Background refresh")
                }
                
                // MARK: - SECTION #2
                
                Section {
                    if enableNotification {
                        SettingViewItem(title: "Product", subTitle: "Avocado Recipes")
                        SettingViewItem(title: "Compatibility", subTitle: "iPhone & iPad")
                        SettingViewItem(title: "Developer", subTitle: "Hakkı Can ŞENGÖNÜL".uppercased())
                        SettingViewItem(title: "Designer", subTitle: "Hakkı Can ŞENGÖNÜL".uppercased())
                        SettingViewItem(title: "Website", subTitle: "github.com/hakkicansengonul")
                        SettingViewItem(title: "Version", subTitle: "1.0.0")
                        
                    }else {
                        HStack{
                            Text("Personal Message").foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding!!")
                        }
                    }
                } header: {
                    Text("Application")
                }
                
                
            }
            
            
            
            
        }//:VStack
        .frame(maxWidth: 640)
    }
}


// MARK: - PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
