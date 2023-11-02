//
//  WaitlistViewModelPeopleList.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import Foundation
import SwiftUI

struct WaitlistViewModelPeopleList: EnvironmentKey {
    static let defaultValue: [Person] = []
}

extension EnvironmentValues {
    var peopleList: [Person] {
        get { self[WaitlistViewModelPeopleList.self] }
        set { self[WaitlistViewModelPeopleList.self] = newValue }
    }
}
