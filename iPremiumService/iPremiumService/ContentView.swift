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
            Login(login: $login)
                .frame(minWidth: 200, maxWidth: 300, minHeight: 150, maxHeight: 200)
                .padding()
        }else{
            Test()
                .frame(minWidth: 200, maxWidth: 300, minHeight: 150, maxHeight: 200)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
