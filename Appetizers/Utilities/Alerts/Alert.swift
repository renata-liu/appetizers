//
//  Alert.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-20.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    // MARK: network alerts
    static let invalidData       = AlertItem(title: Text("Server Error"),
                                             message: Text("The data received from the server is invalid. Please contact support."),
                                             dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server. Please try again later or contact support."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidURL      = AlertItem(title: Text("Server Error"),
                                           message: Text("There was anissue connecting to the server. If this persists, please contact support."),
                                           dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time. Please check your internet connection."),
                                            dismissButton: .default(Text("OK")))
    
    // MARK: account alerts
    static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure all form fields are filled out."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                            dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess     = AlertItem(title: Text("Profile Saved"),
                                               message: Text("Your profile information was successfully saved"),
                                               dismissButton: .default(Text("OK")))
    
    static let userSaveUnsuccessful     = AlertItem(title: Text("Profile Error"),
                                               message: Text("An error occurred while trying to save or retrieve your profile"),
                                               dismissButton: .default(Text("OK")))
}
