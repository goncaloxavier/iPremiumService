//
//  Cliente.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 12/04/2021.
//

import Foundation

class Cliente {
    var primeiroNome: String = ""
    var ultimoNome: String = ""
    var NIF: Int = 0
    var empresa: String = ""
    
    
    func validateNIF(NIF: String) -> String {
        let decimalCharacters = CharacterSet.decimalDigits
        var errorMessage: String = "test"
        
        let decimalRange = NIF.rangeOfCharacter(from: decimalCharacters)
        
        if decimalRange == nil {
            errorMessage = "NIF inválido"
        }else {
            errorMessage = ""
        }
        
        return errorMessage
    }
}
