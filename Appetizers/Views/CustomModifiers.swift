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

extension View {
    func standardButtonStyle() -> some View {
        modifier(StandardButtonStyle())
    }
}
