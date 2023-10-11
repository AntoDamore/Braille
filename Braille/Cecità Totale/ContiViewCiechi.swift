//
//  ContiViewCiechi.swift
//  Braille
//
//  Created by Antonio D'amore on 08/10/23.
//

import SwiftUI

struct ContiViewCiechi: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {

                VStack {
                    Spacer()
                    NavigationLink(destination: SaldoMovimentiView()) {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 345, height: 190)
                            .foregroundColor(.white)
                            .overlay(
                                Text("Conto Famiglia")
                                    .font(Font.custom("Lexend-Bold", size: 24).weight(.bold))
                                    .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                    .offset(x: -1, y: -1.62)
                            )
                    }
                    
                    NavigationLink(destination: ciao()) {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 345, height: 190)
                            .foregroundColor(.white)
                            .overlay(
                                Text("Salvadanaio")
                                    .font(Font.custom("Lexend-Bold", size: 24).weight(.bold))
                                    .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                    .offset(x: -1, y: -1.62)
                            )
                    } 
                    
                    NavigationLink(destination: ciao()) {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 345, height: 190)
                            .foregroundColor(.white)
                            .overlay(
                                Text("BluBanca")
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
                }
            
//            .frame(width: 400, height: 812)
            .frame(width: 375, height: 812)
            .background(Color(red: 0.93, green: 0.93, blue: 0.93))

        }
        .navigationBarHidden(true)

    }
}


struct ContiViewCiechi_Previews: PreviewProvider {
    static var previews: some View {
        ContiViewCiechi()
    }
}
