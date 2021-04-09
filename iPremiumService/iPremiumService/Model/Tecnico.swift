//
//  Tecnico.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 09/04/2021.
//

import Foundation

class Tecnico {
    var username: String = ""
    var password: String = ""
    
    func inputValidation(username: String, password: String) -> String {
        var errorMessage: String = "test"
        
        if (username.isEmpty || password.isEmpty) || (username.contains(" ") || password.contains(" ")) {
            errorMessage = "Both Username and Password cannot be empty"
        }else {
            errorMessage = ""
        }
        
        return errorMessage
    }
}
