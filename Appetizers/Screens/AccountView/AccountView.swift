//
//  AccountView.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-19.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject private var viewModel = AccountViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                    TextField("Last Name", text: $viewModel.user.lastName)
                    TextField("Email", text: $viewModel.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday",
                               selection: $viewModel.user.birthdate,
                               displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                            .foregroundColor(.brandPrimary)
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle(Text("😊 Account"))
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { item in
                Alert(title: item.title,
                       message: item.message,
                       dismissButton: item.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
