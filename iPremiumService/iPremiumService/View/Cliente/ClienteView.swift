//
//  Test.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 09/04/2021.
//

import SwiftUI

struct ClienteView: View {
    @State private var primeiroNome: String = ""
    @State private var ultimoNome: String = ""
    @State private var NIF: String = ""
    @State private var empresa: String = ""
    @State private var errorMessage: String = ""
    
    @State private var cliente = Cliente()
    
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Primeiro Nome")
                    .bold()
                TextField(
                    "Primeiro Nome",
                    text: $primeiroNome
                )
                .formStyle()
                
                Spacer()
                    .frame(height: 25)
                
                Text("NIF")
                    .bold()
                TextField(
                    "NIF",
                     text: $NIF
                ) { isEditing in
                    self.isEditing = isEditing
                } onCommit: {
                    errorMessage = cliente.validateNIF(NIF: NIF)
                }
                .formStyle()
               
                Text(errorMessage)
                    .foregroundColor(.red)
            }
            Divider()
                .frame(width: 25, height: 150)
            VStack(alignment: .leading) {
                Text("Ultimo Nome")
                    .bold()
                TextField(
                    "Ultimo Nome",
                     text: $ultimoNome
                )
                .formStyle()
                
                Spacer()
                    .frame(height: 25)
                
                Text("Empresa")
                    .bold()
                TextField(
                    "Empresa",
                     text: $empresa
                )
                .formStyle()
            }
        }
        .padding()
    }
}
