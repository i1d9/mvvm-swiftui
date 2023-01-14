//
//  NetworkService.swift
//  Mvvm
//
//  Created by Ian Nalyanya on 14/01/2023.
//

import Foundation


class NetworkService {
    
    
    
    
    
    func loadEmployees(completion: @escaping ([Employee]) -> ()) {
        
        let employee_url = "https://dummy.restapiexample.com/api/v1/employees"
        
        guard let url = URL(string: employee_url) else { return }
        
            URLSession.shared.dataTask(with: url) { data, response, error in
                
                guard let data = data, error == nil else {
                    completion([])
                    return
                }
                
                let response = try? JSONDecoder().decode(EmployeeServerResponse.self, from: data)
                if let response = response {
                    DispatchQueue.main.async {
                        completion(response.data)
                    }
                }
                
                
            }.resume()
            
        }
}
