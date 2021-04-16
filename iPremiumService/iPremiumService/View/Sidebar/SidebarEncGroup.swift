//
//  SidebarEncGroup.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 15/04/2021.
//

import SwiftUI

struct SidebarEncGroup: View {
    
    @Binding var editCliente: Bool
    @Binding var login: Bool
    
    var body: some View {
        Spacer()
        
        VStack(alignment: .leading){
            Text("Emcomenda")
                .font(.headline)
            Divider()
        }

        NavigationLink(destination: ReparacaoView(editCliente: $editCliente, login: $login)) {
            SidebarRow(section: "Criar/Editar Encomenda", sectionImage: "cube.box")
        }
        NavigationLink(destination: ReparacaoView(editCliente: $editCliente, login: $login)) {
            SidebarRow(section: "Lista Encomendas", sectionImage: "list.bullet")
        }
    }
}
