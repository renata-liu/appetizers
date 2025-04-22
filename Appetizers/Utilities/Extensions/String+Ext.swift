//
//  String+Ext.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-21.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailFormat     = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate  = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
