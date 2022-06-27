//
//  HeaderModel.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 27.06.2022.
//

import SwiftUI
// MARK: - HEADER MODEL
struct Header : Identifiable {
    let id = UUID()
    let image: String
    let headline : String
    let subheadline: String
}
