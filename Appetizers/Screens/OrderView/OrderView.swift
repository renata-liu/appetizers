//
//  OrderView.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-19.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems: [Appetizer] = MockData.appetizers
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                
                Button {
                    print("order placed")
                } label: {
                    APButton(title: "$\(10.00, specifier: "%.2f") - Place Order")
                }
                .padding(.bottom, 30)
            }
            .navigationTitle(Text("🧾 Orders"))
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
