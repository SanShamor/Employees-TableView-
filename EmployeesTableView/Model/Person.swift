//
//  Person.swift
//  EmployeesTableView
//
//  Created by Александр on 14.04.2021.
//

enum Contacts: String {
    case phone = "phone"
    case email = "tray"
}

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        [
            Person(name: "Наталья", surname: "Земцова", phoneNumber: "+7(906)0997788", email: "partyhoseQueen@mail.ru"),
            Person(name: "Олег", surname: "Прокофьев", phoneNumber: "8(966)1232524", email: "griddinghog@gmail.com"),
            Person(name: "Виктор", surname: "Кузнецов", phoneNumber: "+7(990)6714321", email: "frog@mail.ru"),
            Person(name: "Наталья", surname: "Рудова", phoneNumber: "8(906)0978080", email: "example@inbox.com")
        ]
    }
    
}
