//
//  WaitlistViewModelAddPerson.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import SwiftUI

typealias AddPerson = (Person) -> Void

struct WaitlistViewModelAddPerson: EnvironmentKey {
    static let defaultValue: AddPerson = { _ in }
}

extension EnvironmentValues {
    var addPerson: AddPerson {
        get { self[WaitlistViewModelAddPerson.self] }
        set { self[WaitlistViewModelAddPerson.self] = newValue }
    }
}
