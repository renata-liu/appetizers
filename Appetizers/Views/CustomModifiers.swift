//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

struct CellImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
             .aspectRatio(contentMode: .fit)
             .frame(width: 120, height: 90)
             .cornerRadius(6)
    }
}

extension View {
    func standardButtonStyle() -> some View {
        modifier(StandardButtonStyle())
    }
}
