//
//  SidebarRow.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 12/04/2021.
//

import SwiftUI

struct SidebarRow: View {
    var section: String = "Cliente"
    var sectionImage: String = ""
    
    var body: some View {
        HStack {
            Image
                .init(systemName: sectionImage)
            Text(section)
                .font(.body)
        }
    }
}
