//
//  User.swift
//  Appetizers
//
//  Created by Renata Liu on 2025-04-22.
//

import Foundation

struct User: Codable {
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
}
