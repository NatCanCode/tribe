//
//  People.swift
//  PeopleSwiftUI
//
//  Created by Nova on 17/09/2022.
//

import Foundation

struct People: Identifiable {
//   UUID => identifiant unique attribué
    var id = UUID()
    var imageName: String
    var name: String
    var age: Int
    
//    backstick => £ key
    static let `default` = [
        People(imageName: "people0", name: "Nina", age: 11),
        People(imageName: "people1", name: "Nat", age: 50),
        People(imageName: "people2", name: "Alex", age: 52),
        People(imageName: "people3", name: "Gavroche", age: 15),
        People(imageName: "people4", name: "Eclipse", age: 1)
    ]
}
