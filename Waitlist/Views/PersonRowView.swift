//
//  PersonRowView.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import SwiftUI

struct PersonRowView: View {
    @Environment(\.removePerson) var removePerson

    let person: Person
    
    var body: some View {
        VStack(spacing: 5) {
            Text("\(person.firstName) \(person.lastName)")
                .foregroundStyle(.blue)
            Button(action: {
                removePerson(person.id)
            }, label: {
                Image(systemName: "trash")
            })
        }
        .padding()
        .border(.blue)
    }
}

#Preview {
    PersonRowView(
        person: .init(
            firstName: "Steve",
            lastName: "Jobs",
            emailAddress: "steve.jobs@gmail.com"
        )
    )
    .environment(\.removePerson) {
        print("Person \($0) is removed! ")
    }
}
