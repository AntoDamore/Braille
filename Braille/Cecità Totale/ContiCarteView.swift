//
//  ContiCarteView.swift
//  Braille
//
//  Created by Eliana Ecuba on 09/10/23.
//

import SwiftUI

struct ContiCarteView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView() {
            
            VStack {
                Spacer()
                NavigationLink(destination: ContiViewCiechi()) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 345, height: 280)
                        .foregroundColor(.white)
                        .overlay(
                            Text("Conti")
                                .font(Font.custom("Lexend-Bold", size: 24).weight(.bold))
                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                .offset(x: -1, y: -1.62)
                        )
                }
                
                NavigationLink(destination: CarteView()) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 345, height: 280)
                        .foregroundColor(.white)
                        .overlay(
                            Text("Carte")
                                .font(Font.custom("Lexend-Bold", size: 24).weight(.bold))
                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                .offset(x: -1, y: -1.62)
                        )
                }
                Spacer()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "chevron.left") // Icona SF Symbols "left"
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Text("Indietro")
                            .font(Font.custom("Lexend-Bold", size: 24).weight(.bold))
                            .foregroundColor(.white)
                    }
                    .frame(width: 345, height: 82)
                    .background(Color(red: 0, green: 0.79, blue: 0.51))
                    .cornerRadius(30)
                }
                Spacer()
            }.frame(width: 375, height: 812)
                .background(Color(red: 0.93, green: 0.93, blue: 0.93));
        }
        .navigationBarHidden(true)

        .frame(width: 375, height: 812)
        .background(Color(red: 0.93, green: 0.93, blue: 0.93))

        // Rimuovi il codice delle linee orizzontali alla fine del tuo ZStack
    } 
}

struct ContiCarteView_Previews: PreviewProvider {
    static var previews: some View {
        ContiCarteView()
    }
}

