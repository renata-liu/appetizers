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
                    TextField("First Name", text: $viewModel.firstName)
                    TextField("Last Name", text: $viewModel.lastName)
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    DatePicker("Birthday",
                               selection: $viewModel.birthdate,
                               displayedComponents: .date)
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                            .foregroundColor(.brandPrimary)
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra napkins", isOn: $viewModel.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle(Text("😊 Account"))
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
