//
//  ContentView.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 09/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var login = false
    
    var body: some View {
        if !login {
            LoginView(login: $login)
                .animation(.interactiveSpring())
                .frame(minWidth: 350, maxWidth: 350, minHeight: 250, maxHeight: 250)
                .padding()
        }else{
           NavigationView {
                Sidebar(login: $login)
           }
           .frame(width:600, height: 350)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
