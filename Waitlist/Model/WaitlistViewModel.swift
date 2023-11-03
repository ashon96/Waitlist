//
//  WaitlistViewModel.swift
//  Waitlist
//
//  Created by Andrew Shon on 11/2/23.
//

import Foundation

class WaitlistViewModel: ObservableObject {
    @Published private(set) var peopleList = [Person]()
    
    func addPerson(newPerson: Person) {
        peopleList.append(newPerson)
        print(peopleList)
    }
    
    func removePerson(with id: String) {
        peopleList = peopleList.filter {
            $0.id != id
        }
    }
}



