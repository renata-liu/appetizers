//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-19.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle(Text("🍽️ Appetizers"))
        }
    }
}

#Preview {
    AppetizerListView()
}
