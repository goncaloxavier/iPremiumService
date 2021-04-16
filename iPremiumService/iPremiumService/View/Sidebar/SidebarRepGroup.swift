//
//  SidebarRepGroup.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 15/04/2021.
//

import SwiftUI

struct SidebarRepGroup: View {
    @Binding var editCliente: Bool
    @Binding var login: Bool
    var body: some View {
        Spacer()
        
        VStack(alignment: .leading){
            Text("Reparação")
                .font(.headline)
            Divider()
        }

        NavigationLink(destination: ReparacaoView(editCliente: $editCliente, login: $login)) {
            SidebarRow(section: "Criar/Editar Reparação", sectionImage: "gearshape")
        }
        NavigationLink(destination: ReparacaoView(editCliente: $editCliente, login: $login)) {
            SidebarRow(section: "Lista Reparações", sectionImage: "list.bullet")
        }
    }
}
