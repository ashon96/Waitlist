//
//  ContentView.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var waitlistViewModel = WaitlistViewModel()
    
    var body: some View {
        WaitlistPageView()
            .addWaitlistViewModelRequestsToEnvironment(from: waitlistViewModel)
    }
}

#Preview {
    ContentView()
        .environment(\.addPerson) {
            print("added person \($0.firstName) \($0.lastName)")
        }
        .environment(\.removePerson) {
            print("Delete triggered at id, \($0)")
        }
        .environment(\.peopleList, [
            .init(
                firstName: "Johnny",
                lastName: "Appleseed",
                emailAddress: "ja@gmail.com"
            )
        ])
}
