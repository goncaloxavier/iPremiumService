//
//  SidebarProfile.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 12/04/2021.
//

import SwiftUI

struct LogoutButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 50, height: 20)
            .background(configuration.isPressed ? Color.white : Color.red)
            .foregroundColor(configuration.isPressed ? Color.red : Color.white)
            .clipShape(Capsule())
    }
}

struct SidebarProfile: View {
    @Binding var login: Bool
    
    var body: some View {
        HStack {
            Text("Zé das Quinas")
                .bold()
            Spacer()
            Button("Logout", action: logout)
                .buttonStyle(LogoutButtonStyle())
        }
    }
    
    func logout() {
        self.login = false
    }
}
