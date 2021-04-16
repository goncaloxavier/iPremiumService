//
//  NavigationView.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 15/04/2021.
//

import SwiftUI

struct NavigationView: View {
    @Binding var login: Bool
    @Binding var editCliente: Bool
    
    var body: some View {
        NavigationView {
             Sidebar(login: $login, editCliente: $editCliente)
                 .frame(minWidth: 200, maxWidth: .infinity)
                 .animation(.default)
        }
        .fixedSize()
        .background(Color.white)
    }
}
