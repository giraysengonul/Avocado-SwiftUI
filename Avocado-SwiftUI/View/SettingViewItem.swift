//
//  SettingViewItem.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 2.07.2022.
//

import SwiftUI

struct SettingViewItem: View {
    // MARK: - PROPERTIES
    let title: String
    let subTitle: String
    // MARK: - BODY
    var body: some View {
        HStack{
            Text(title).foregroundColor(.gray)
            Spacer()
            Text(subTitle)
        }
    }
}

// MARK: - PREVIEW
struct SettingViewItem_Previews: PreviewProvider {
    static var previews: some View {
        SettingViewItem(title: "Product", subTitle: "Avocado Recipes").previewLayout(.sizeThatFits).padding()
    }
}
