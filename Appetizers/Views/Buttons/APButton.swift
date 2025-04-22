//
//  APButton.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-21.
//

import SwiftUI

struct APButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .foregroundColor(.white)
            .frame(width: 220, height: 50)
            .background(.brandPrimary)
            .fontWeight(.bold)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test")
}
