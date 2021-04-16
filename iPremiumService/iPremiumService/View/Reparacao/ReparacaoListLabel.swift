//
//  ReparacaoListLabels.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 15/04/2021.
//

import SwiftUI

struct ReparacaoListLabel: View {
    var label: String = ""
    
    var body: some View {
        Text(label)
        Divider()
            .background(Color.green)
            .opacity(0.5)
    }
}
