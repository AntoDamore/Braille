//
//  CecitàTotale.swift
//  Braille
//
//  Created by Eliana Ecuba on 09/10/23.
//

import SwiftUI

struct Page2: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    NavigationLink(destination: ContiCarteView()) {
                        VStack{
                            RoundedRectangle(cornerRadius: 15)
                                                        .frame(width: 345, height: 280)
                                                        .foregroundColor(.white)
                                                        .overlay(
                                                            Text("Conti e Carte")
                                                                .font(Font.custom("Lexend-Bold", size: 24).weight(.bold))
                                                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                                                .offset(x: -1, y: -1.62)
                                                        )
                        }
                    }
                    NavigationLink(destination: OperazioniView()) {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 345, height: 280)
                            .foregroundColor(.white)
                            .overlay(
                                Text("Operazioni")
                                    .font(Font.custom("Lexend-Bold", size: 24).weight(.bold))
                                    .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                    .offset(x: -1, y: -1.62)
                            )
                    }
                    
                    NavigationLink(destination: AiutoView()) {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 345, height: 82)
                            .foregroundColor(.white)
                            .overlay(
                                HStack {
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(Color(red: 0.60, green: 0.60, blue: 0.60))
                                        .overlay(
                                            Image(systemName: "questionmark.circle")
                                                .font(Font.system(size: 30).weight(.bold))
                                                .foregroundColor(.white)
                                        )
                                        .padding(.trailing, 60)
                                    Text("Aiuto")
                                        .font(Font.custom("Lexend-Bold", size: 24).weight(.bold))
                                        .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                        .offset(x: -60.50, y: -0.50)
                                }
                                    .padding(.trailing, 110)
                            )
                    }
                }
                // ... Rimuovi il codice delle linee orizzontali alla fine del tuo ZStack
            }
            .frame(width: 375, height: 812)
                .background(Color(red: 0.93, green: 0.93, blue: 0.93));
        }        .navigationBarHidden(true)

            
    }
}

struct Page2_Previews: PreviewProvider {
    static var previews: some View {
        Page2()
        ContiCarteView()
    }
}

