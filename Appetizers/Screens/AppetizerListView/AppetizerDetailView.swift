//
//  DetailView.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-21.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    @EnvironmentObject var order: Order
    var selectedAppetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: selectedAppetizer.imageURL)
                .frame(width: 300, height: 225)
                .aspectRatio(contentMode: .fit)
            
            VStack {
                Text(selectedAppetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.top)
                
                Text(selectedAppetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: selectedAppetizer.calories)
                    NutritionInfo(title: "Carbs", value: selectedAppetizer.carbs)
                    NutritionInfo(title: "Protein", value: selectedAppetizer.protein)
                }
            }
            
            Spacer()
            
            Button {
                order.add(selectedAppetizer)
                isShowingDetail = false
            } label: {
//                APButton(title: "$\(selectedAppetizer.price, specifier: "%.2f") - Add To Order")
                Text("$\(selectedAppetizer.price, specifier: "%.2f") - Add to Order")
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom, 40)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(16)
        .shadow(radius: 30)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

#Preview {
    AppetizerDetailView(selectedAppetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
}

struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text("\(value)")
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
