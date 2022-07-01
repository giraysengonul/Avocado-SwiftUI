//
//  RipeningModel.swift
//  Avocado-SwiftUI
//
//  Created by hakkı can şengönül on 1.07.2022.
//

import SwiftUI

struct Ripening: Identifiable{
    
    let id = UUID()
    let image: String
    let stage : String
    let title: String
    let description: String
    let ripeness: String
    let instruction: String
}
