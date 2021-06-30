//
//  RipeningStageView.swift
//  Avocados
//
//  Created by Emile Wong on 28/6/2021.
//

import SwiftUI

struct RipeningStageView: View {
    // MARK: - PROPERTIES
    var ripeningStages: [Ripening] = ripeningsData
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripening: item)
                    }
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                
                Spacer()
            }
        }
    }
}
// MARK: - BODY
struct RipeningStageView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStageView()
    }
}
