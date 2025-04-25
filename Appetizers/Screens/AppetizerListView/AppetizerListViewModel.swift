//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-20.
//

import SwiftUI

@MainActor final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    @Published var selectedAppetizer: Appetizer?
    @Published var isShowingDetail = false
    
    func getAppetizers() {
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
            } catch {
                if let apError = error as? APError {
                    switch apError {
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    }
                }
                else {
                    alertItem = AlertContext.invalidResponse
                }
            }
        }
    }
    
}
