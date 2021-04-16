//
//  Test.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 09/04/2021.
//

import SwiftUI

extension Picker {
    func formStyle() -> some View {
        self
            .frame(width: 150)
            .pickerStyle(DefaultPickerStyle())
    }
}

struct ClienteView: View {
    @State private var primeiroNome: String = ""
    @State private var ultimoNome: String = ""
    @State private var NIF: String = ""
    @State private var empresa: String = ""
    @State private var localidade: String = ""
    @State private var morada: String = ""
    @State private var errorMessage: String = ""
    
    @State private var cliente = Cliente()
    
    @State private var isEditing = false
    
    @Binding var login: Bool
    @Binding var editCliente: Bool
    
    @State private var selectedContactoPref = ContactoPref.Email
    
    enum ContactoPref: String, CaseIterable, Identifiable {
        case Email
        case Telefone
        case EmailTelefone

        var id: String { self.rawValue }
    }
    
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                VStack {
                    Spacer()
                        .frame(height: 25)
                    
                    VStack(alignment: .leading) {
                        Text("Primeiro Nome")
                            .formStyle()
                        TextField(
                            "Primeiro Nome",
                            text: $primeiroNome
                        )
                        .formStyle()
                        
                        Spacer()
                            .frame(height: 25)
                        
                        Text("NIF")
                            .formStyle()
                        TextField(
                            "NIF",
                             text: $NIF
                        ) { isEditing in
                            self.isEditing = isEditing
                        } onCommit: {
                            errorMessage = cliente.validateNIF(NIF: NIF)
                        }
                        .formStyle()
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                    VStack(alignment: .leading) {
                        Text("Localidade")
                            .formStyle()
                        TextField(
                            "Localidade",
                            text: $localidade
                        )
                        .formStyle()
                        
                        Spacer()
                            .frame(height: 25)
                        
                        Text("Morada")
                            .formStyle()
                        TextField(
                            "Morada",
                            text: $morada
                        )
                        .formStyle()
                    }
                }
                
                Divider()
                    .background(Color.green)
                    .opacity(0.5)
                    .frame(width: 40, height: 300)
                
                VStack {
                    Spacer()
                        .frame(height: 37)
                    
                    VStack(alignment: .leading) {
                        Text("Ultimo Nome")
                            .formStyle()
                        TextField(
                            "Ultimo Nome",
                             text: $ultimoNome
                        )
                        .formStyle()
                        
                        Spacer()
                            .frame(height: 25)
                        
                        Text("Empresa")
                            .formStyle()
                        TextField(
                            "Empresa",
                             text: $empresa
                        )
                        .formStyle()
                        
                        Spacer()
                            .frame(height: 25)
                        
                        Text("Contacto Preferencial")
                            .formStyle()
                        Picker("", selection: $selectedContactoPref) {
                            Text("Email").tag(ContactoPref.Email)
                            Text("Telefone").tag(ContactoPref.Telefone)
                            Text("Email e/ou Telefone").tag(ContactoPref.EmailTelefone)
                        }
                        .formStyle()
                    }
                    
                    Spacer()
                        .frame(height: 25)

                    VStack {
                        List {
                            Text("91#########")
                            Text("########@######.com")
                            Text("#########@#####.pt")
                            Text("92#########")
                        }
                        .frame(width: 255, height: 65)
                    }
                }
            }
            
            Spacer()
                .frame(height: 25)
            
            HStack {
                Button("Save") {
                    print("Save")
                }
                Button("Delete") {
                    login = true
                    editCliente = false
                }
                
                Spacer()
            }
        }
        .animation(.default)
        .padding()
    }
}
