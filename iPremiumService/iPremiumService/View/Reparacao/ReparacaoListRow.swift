//
//  ReparacaoListRow.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 15/04/2021.
//

import SwiftUI

struct ReparacaoListRow: View {
    var description: String = ""
    
    var body: some View {
        Text(description)
        Divider()
            .background(Color.green)
            .opacity(0.5)
    }
}

struct ReparacaoListRow_Previews: PreviewProvider {
    static var previews: some View {
        ReparacaoListRow()
    }
}
