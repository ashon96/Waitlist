//
//  WaitlistViewModelRemovePerson.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import SwiftUI

typealias RemovePerson = (String) -> Void

struct WaitlistViewModelRemovePerson: EnvironmentKey {
    static let defaultValue: RemovePerson = { _ in }
}

extension EnvironmentValues {
    var removePerson: RemovePerson {
        get { self[WaitlistViewModelRemovePerson.self] }
        set { self[WaitlistViewModelRemovePerson.self] = newValue }
    }
}
