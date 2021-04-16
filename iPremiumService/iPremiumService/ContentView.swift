//
//  ContentView.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 09/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var login = false
    @State private var editCliente = false
    
    var body: some View {
        if !login && !editCliente {
            LoginView(login: $login)
                .animation(.default)
                .frame(minWidth: 350, maxWidth: 350, minHeight: 250, maxHeight: 250)
                .padding()
                .background(Color.white)
        }else if login{
            ContainerView(login: $login, editCliente: $editCliente)
        } else if editCliente {
            ClienteView(login: $login, editCliente: $editCliente)
                .fixedSize()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
