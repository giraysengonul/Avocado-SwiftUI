//
//  RepiceModel.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 30.06.2022.
//

import SwiftUI

struct Recipe: Identifiable{
    
    let id = UUID()
    let title: String
    let headline: String
    let image: String
    let rating: Int
    let serves: Int
    let preparation: Int
    let cooking: Int
    let instructions: [String]
    let ingredients: [String]
    
}
