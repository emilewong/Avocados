//
//  RipeningModel.swift
//  Avocados
//
//  Created by Emile Wong on 30/6/2021.
//

import SwiftUI

// MARK: - RIPENING MODEL

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
