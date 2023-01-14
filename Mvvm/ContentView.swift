//
//  ContentView.swift
//  Mvvm
//
//  Created by Ian Nalyanya on 14/01/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ViewModel()
    var body: some View {
       
        
            List(vm.employees, id: \.id){
                employee in
                
                Text(employee.name)
                
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
