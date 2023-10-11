//
//  SecondVersion.swift
//  Braille
//
//  Created by Eliana Ecuba on 08/10/23.
//

import SwiftUI

struct SecondVersion: View {
    var body: some View {
        List {
            Section {
                HStack{  Image("iconPortafoglio")
                        .padding()
                    
                    Text("Conti")
                        .font(Font.custom("Lexend-Bold", size: 24))
}
            }
            Section {
                HStack {
                    Image("arancione")
                            .padding()
                    Text("Carte")
                        .font(Font.custom("Lexend-Bold", size: 24))
                }}
            Section {
                HStack {
                    Image("viola")
                            .padding()
                    Text("Operazioni")
                        .font(Font.custom("Lexend-Bold", size: 24))
                }}
            Section {
                HStack {
                    Image("parlaconnoi")
                            .padding()
                    Text("Parla con noi")
                        .font(Font.custom("Lexend-Bold", size: 24))
                }}
            Section {
                HStack {
                    
                    Image("carta")
                            .padding()
                    Text("Altro")
                        .font(Font.custom("Lexend-Bold", size: 24))
                } }
        }
        .environment(\.defaultMinListRowHeight, 80)
        .navigationBarHidden(true)
    }
}

#Preview {
    SecondVersion()
}
