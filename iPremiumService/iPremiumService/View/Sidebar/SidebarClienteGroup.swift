//
//  SidebarClienteGroup.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 15/04/2021.
//

import SwiftUI

struct SidebarClienteGroup: View {
    @Binding var login: Bool
    @Binding var editCliente: Bool
    @State private var selection: Int? = 0 // optional !!
    
    var body: some View {
        Spacer()
        
        VStack(alignment: .leading) {
            Text("Cliente")
                .font(.headline)
            Divider()
        }
        
        NavigationLink(destination: ClienteView(login: $login, editCliente: $editCliente), tag: 0, selection: $selection) {
            SidebarRow(section: "Criar/Editar Reparação", sectionImage: "person.crop.circle")
        }
        NavigationLink(destination: ClienteView(login: $login, editCliente: $editCliente)) {
            SidebarRow(section: "Lista Clientes", sectionImage: "list.bullet")
        }
    }
}
