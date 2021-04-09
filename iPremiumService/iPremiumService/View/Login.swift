//
//  Login.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 09/04/2021.
//

import SwiftUI

struct Login: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String = ""
    @State private var tecnico = Tecnico()
    @Binding var login: Bool
    
    var body: some View {
        
        VStack(alignment: .center){
            Text("iPremium Service")
                .font(.title)
            
            Spacer()
            
            VStack(alignment: .leading){
                Text("Username")
                    .bold()
                TextField(
                    "Username",
                     text: $username
                )
                .frame(minWidth: 150, maxWidth: 300)
                
                Text("Password")
                    .bold()
                SecureField(
                    "Password",
                     text: $password
                )
                .frame(minWidth: 150, maxWidth: 300)
                
                Button("Sign In") {
                    errorMessage = tecnico.inputValidation(username: username, password: password)
                    
                    if errorMessage.isEmpty {
                        self.login = true
                    }
                }
                
                Text(errorMessage)
                    .foregroundColor(.red)
            }
        }
    }
}
