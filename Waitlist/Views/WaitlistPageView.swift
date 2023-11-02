//
//  WaitlistPageView.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import SwiftUI

struct WaitlistPageView: View {
    @Environment(\.peopleList) var peopleList

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("WaitList: \(peopleList.count)")
                AddPersonForm()
                ForEach(peopleList) { person in
                    NavigationLink(value: person) {
                        PersonRowView(person: person)
                    }
                }
            }
            .padding()
            .navigationDestination(for: Person.self) { personDetails in
                VStack {
                    Text("Details")
                    Text("ID: \(personDetails.id)")
                    Text(personDetails.firstName)
                    Text(personDetails.lastName)
                    Text(personDetails.emailAddress)
                }
            }
        }
    }
}

#Preview {
    WaitlistPageView()
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
