//
//  Test.swift
//  iPremiumService
//
//  Created by Gonçalo Venâncio Xavier on 12/04/2021.
//

import SwiftUI

extension TextField {
    func formRepStyle() -> some View {
        self
            .frame(width:150)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct ReparacaoView: View {
    @State private var cliente: String = ""
    @State private var nomeParceiro: String = ""
    @State private var numeroParceiro: String = ""
    @State private var localidade: String = ""
    @State private var numeroSerie: String = ""
    @State private var equipamento: String = ""
    @State private var garantia: String = ""
    @State private var codigoSIM: String = ""
    @State private var codigoBloqueio: String = ""
    
    @State private var isEditing = false
    @Binding var editCliente: Bool
    @Binding var login: Bool
    
    @State private var selectedGarantia = Garantia.Nao
    @State private var selectedCopiaSeg = CopiaSeg.Nao
    @State private var selectedParceiro = Parceiro.iPremium
    @State private var selectedEstado = Estado.Aberto
    
    enum Garantia: String, CaseIterable, Identifiable {
        case Internacional
        case Nao
        case Sim

        var id: String { self.rawValue }
    }
    
    enum CopiaSeg: String, CaseIterable, Identifiable {
        case ClienteFez
        case Nao
        case Sim

        var id: String { self.rawValue }
    }
    
    enum Parceiro: String, CaseIterable, Identifiable {
        case PontoSagres
        case iPremium
        case Apple

        var id: String { self.rawValue }
    }
    
    enum Estado: String, CaseIterable, Identifiable {
        case Aberto
        case PorCobrar
        case Fechado

        var id: String { self.rawValue }
    }
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                    .frame(width: 400)
                VStack(alignment: .leading) {
                    Text("Estado")
                        .formStyle()
                    Picker("", selection: $selectedEstado) {
                        Text("Aberto").tag(Estado.Aberto)
                        Text("Por Cobrar").tag(Estado.PorCobrar)
                        Text("Fechado").tag(Estado.Fechado)
                    }
                    .formStyle()
                }
            }
            
            Spacer()
                .frame(height: 25)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Parceiro")
                        .formStyle()
                    Picker("", selection: $selectedParceiro) {
                        Text("Ponto Sagres").tag(Parceiro.PontoSagres)
                        Text("iPremium").tag(Parceiro.iPremium)
                        Text("Apple").tag(Parceiro.Apple)
                    }
                    .formStyle()
                }
                
                Spacer()
                    .frame(width: 45, height: 0)
                
                VStack(alignment: .leading) {
                    Text("Número Parceiro")
                        .formStyle()
                    TextField(
                        "Número Parceiro",
                        text: $numeroParceiro
                    )
                    .formRepStyle()
                }
            }
            
            Spacer()
                .frame(height: 25)
            
            HStack {
                VStack {
                    VStack(alignment: .leading) {
                        Text("Cliente")
                            .formStyle()
                        TextField(
                            "Cliente",
                            text: $cliente
                        )
                        .formStyle()
                        
                        Spacer()
                            .frame(height: 25)
                        
                        Text("Numero Série")
                            .formStyle()
                        TextField(
                            "Numero Série",
                             text: $numeroSerie
                        )
                        .formStyle()
                    }
                    
                    Spacer()
                        .frame(height: 25)
                    
                    VStack(alignment: .leading) {
                        Text("Código SIM")
                            .formStyle()
                        TextField(
                            "Código SIM",
                            text: $codigoSIM
                        )
                        .formStyle()
                    }
                }

                Divider()
                    .background(Color.green)
                    .opacity(0.5)
                    .frame(width: 25, height: 225)
                
                VStack {
                    VStack(alignment: .leading) {
                        Text("Localidade")
                            .formStyle()
                        TextField(
                            "Localidade",
                             text: $localidade
                        )
                        .formStyle()
                    }
                    
                    Spacer()
                        .frame(height: 25)
                  
                    VStack(alignment: .leading) {
                        Text("Equipamento")
                            .formStyle()
                        TextField(
                            "Equipamento",
                             text: $equipamento
                        )
                        .formStyle()
                        
                        Spacer()
                            .frame(height: 25)
                        
                        Text("Código Bloqueio")
                            .formStyle()
                        TextField(
                            "Código Bloqueio",
                             text: $codigoBloqueio
                        )
                        .formStyle()
                    }
                }
                
                Divider()
                    .background(Color.green)
                    .opacity(0.5)
                    .frame(width: 25, height: 225)
                
                VStack(alignment: .leading) {
                    Text("Garantia")
                        .formStyle()
                    Picker("", selection: $selectedGarantia) {
                        Text("Internacional").tag(Garantia.Internacional)
                        Text("Não").tag(Garantia.Nao)
                        Text("Sim").tag(Garantia.Sim)
                    }
                    .formStyle()
                    
                    Spacer()
                        .frame(height: 25)
                    
                    Text("Cópia Segurança")
                        .formStyle()
                    Picker("", selection: $selectedCopiaSeg) {
                        Text("Cliente fez").tag(CopiaSeg.ClienteFez)
                        Text("Não").tag(CopiaSeg.Nao)
                        Text("Sim").tag(CopiaSeg.Sim)
                    }
                    .formStyle()
                }
            }
            
            Spacer()
                .frame(height: 25)
            
            HStack {
                ReparacaoListLabel(label: "Procedimento")
                ReparacaoListLabel(label: "Descrição")
                ReparacaoListLabel(label: "Resultado")
                ReparacaoListLabel(label: "Notas")
                ReparacaoListLabel(label: "Data")
                Text("Técnico")
            }
            
            HStack {
                List {
                    HStack {
                        ReparacaoListRow(description: "iOS find my iPhone")
                        ReparacaoListRow(description: "iPhone bloqueado")
                        ReparacaoListRow(description: "Requer ação")
                        ReparacaoListRow(description: "Apple não aceita")
                        ReparacaoListRow(description: "18/02/2021")
                        Text("#######")
                    }
                }
                .frame(width: 650, height: 65)
            }
            
            HStack {
                Button("Save") {
                    print("Save")
                }
                Button("Delete") {
                    editCliente = true
                    login = false
                }
                
                Spacer()
            }
        }
        .animation(.default)
        .padding()
    }
}
