//
//  EmptyState.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-23.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 130)
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .offset(y: -30)
        }
    }
}

#Preview {
    EmptyState(imageName: "empty-order", message: "Test message. \n Making it long for testing purposes")
}
