//
//  Employee.swift
//  Mvvm
//
//  Created by Ian Nalyanya on 14/01/2023.
//

import Foundation



struct Employee : Codable {
    
    var name : String
    var age : Int
    var salary : Int
    var profile_image : String
    var id : Int

    
    enum CodingKeys: String, CodingKey {
        case name = "employee_name", age = "employee_age", salary = "employee_salary", profile_image = "profile_image", id = "id"
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.age = try container.decode(Int.self, forKey: .age)
        self.salary = try container.decode(Int.self, forKey: .salary)
        self.profile_image = try container.decode(String.self, forKey: .profile_image)
    }
}


struct EmployeeServerResponse : Codable {
    
    
    var data : [Employee]
    
    
    enum CodingKeys : String, CodingKey {
        case data = "data"
    }
    
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.data = try container.decode([Employee].self, forKey: .data)
    }

}
