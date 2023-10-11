//
//  ciao.swift
//  Braille
//
//  Created by Eliana Ecuba on 08/10/23.
//

import SwiftUI

struct ciao: View {
    var body: some View {
        ZStack() {
            // ... (altre view)

            Button(action: {
                // Azione da eseguire quando il pulsante viene premuto
            }) {
                ZStack() {
                    Rectangle()
                        .foregroundColor(Color.gray) // Cambia il colore in grigio
                        .frame(width: 345, height: 82)
                        .cornerRadius(15)
                    Text("Conti")
                        .font(Font.custom("Inter", size: 24).weight(.bold))
                        .foregroundColor(.white) // Cambia il colore del testo in bianco
                }
            }
            .frame(width: 345, height: 82)
            .offset(x: 0, y: -311)

            // ... (altre view)
        }
        .frame(width: 375, height: 812)
        .background(Color(red: 0.93, green: 0.93, blue: 0.93));
    }
}

struct ciao_Previews: PreviewProvider {
    static var previews: some View {
        ciao()
    }
}
