//
//  FactModel.swift
//  Avocados
//
//  Created by Emile Wong on 29/6/2021.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}
