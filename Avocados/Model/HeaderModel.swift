//
//  HeaderModel.swift
//  Avocados
//
//  Created by Emile Wong on 29/6/2021.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
