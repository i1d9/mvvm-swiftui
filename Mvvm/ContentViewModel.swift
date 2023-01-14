//
//  ContentViewModel.swift
//  Mvvm
//
//  Created by Ian Nalyanya on 14/01/2023.
//

import Foundation
import SwiftUI

extension ContentView {
    
    
    @MainActor class ViewModel : ObservableObject{
        @Published var items = [Item]()
        @Published var isPresented : Bool = false
        @Published var counter = 0
        @Published private(set) var employees = [Employee]()
        var network = NetworkService()
        
        
        
        init(){
         populateEmployee()
        }
        
        func populateEmployee(){
            network.loadEmployees(){fetched_employees in
                self.employees = fetched_employees
            }
        }
        
        
        
        
        
    }
}


