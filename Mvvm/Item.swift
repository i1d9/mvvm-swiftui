//
//  Item.swift
//  Mvvm
//
//  Created by Ian Nalyanya on 14/01/2023.
//

import Foundation


struct Item : Identifiable, Codable {
    
    var id = UUID()
    
    var name : String
}
