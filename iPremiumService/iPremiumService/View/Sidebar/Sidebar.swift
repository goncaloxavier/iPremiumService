//
//  SideBar.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 12/04/2021.
//

import SwiftUI

struct Sidebar: View {
    @Binding var login: Bool
    @State private var selection: Int? = 0 // optional !!
    var body: some View {
        List {
            SidebarProfile(login: $login)
            NavigationLink(destination: ClienteView().animation(.interactiveSpring()), tag: 0, selection: $selection) {
                SidebarRow(section: "Cliente", sectionImage: "person.crop.circle")
            }
            NavigationLink(destination: Test()) {
                SidebarRow(section: "Test", sectionImage: "gearshape")
            }
        }
        .animation(.interactiveSpring())
        .listStyle(SidebarListStyle())
        .frame(width: 200)
    }
}
