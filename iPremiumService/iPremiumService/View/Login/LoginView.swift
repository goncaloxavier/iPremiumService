//
//  Login.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 09/04/2021.
//

import SwiftUI

extension TextField {
    func formStyle() -> some View {
        self
            .frame(minWidth: 150, maxWidth: 200)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

extension SecureField {
    func formStyle() -> some View {
        self
            .frame(minWidth: 150, maxWidth: 200)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct LoginView: View {
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
                .formStyle()
                
                Text("Password")
                    .bold()
                SecureField(
                    "Password",
                    text: $password
                )
                .formStyle()
                
                Button("Sign In", action: loginAction)
                
                Text(errorMessage)
                    .padding()
                    .foregroundColor(.red)
            }
        }
    }
    
    func loginAction() {
        errorMessage = tecnico.inputValidation(username: username, password: password)
        
        if errorMessage.isEmpty {
            self.login = true
        }
    }
}
