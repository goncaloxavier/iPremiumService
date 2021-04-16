//
//  SideBar.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 12/04/2021.
//

import SwiftUI

struct Sidebar: View {
    @Binding var login: Bool
    @Binding var editCliente: Bool
    
    var body: some View {
        List {
            SidebarProfile(login: $login)
            SidebarClienteGroup(login: $login, editCliente: $editCliente)
            SidebarRepGroup(editCliente: $editCliente, login: $login)
            SidebarEncGroup(editCliente: $editCliente, login: $login)
        }
        .listStyle(SidebarListStyle())
    }
}
