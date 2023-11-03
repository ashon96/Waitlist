//
//  WaitlistViewModelViewExtensions.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import SwiftUI

extension View {
    func addWaitlistViewModelRequestsToEnvironment(from waitlistViewModel: WaitlistViewModel) -> some View {
        self
            .environment(\.peopleList, waitlistViewModel.peopleList)
            .environment(\.addPerson, waitlistViewModel.addPerson(newPerson:))
            .environment(\.removePerson, waitlistViewModel.removePerson(with:))
    }
}
