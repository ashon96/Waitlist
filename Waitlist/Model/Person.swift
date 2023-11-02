//
//  Person.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import Foundation

struct Person: Identifiable, Hashable {
    var id = UUID().uuidString
    var firstName: String
    var lastName: String
    var emailAddress: String
}
