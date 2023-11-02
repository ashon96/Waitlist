//
//  AddPersonForm.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import SwiftUI

struct AddPersonForm: View {
    @Environment(\.addPerson) var addPerson

    @State private var firstName = ""
    @State private var lastName = ""
    @State private var emailAddress = ""
    
    var body: some View {
        VStack(spacing: 10) {
            TextField(text: $firstName) {
                Text("First name")
            }
            .border(.black)
            TextField(text: $lastName) {
                Text("Last name")
            }
            .border(.black)
            TextField(text: $emailAddress) {
                Text("Email address")
            }
            .border(.black)
            Button {
                addPerson(
                    .init(
                        firstName: firstName,
                        lastName: lastName,
                        emailAddress: emailAddress
                    )
                )
                firstName = ""
                lastName = ""
                emailAddress = ""
            } label: {
                Text("Add to waitlist")
            }
            .disabled(firstName.isEmpty || lastName.isEmpty || emailAddress.isEmpty)
        }
        .frame(width: 120)
    }
}

#Preview {
    AddPersonForm()
        .environment(\.addPerson) {
            print("added person \($0.firstName) \($0.lastName)")
        }
}
