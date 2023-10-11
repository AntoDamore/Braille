//
//  SaldoView.swift
//  Braille
//
//  Created by Eliana Ecuba on 09/10/23.
//

import SwiftUI

struct SaldoView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack() {
            Text("Saldo")
                .font(Font.custom("Lexend", size: 32).weight(.bold))
                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                .offset(x: -129, y: -308.50)
            ZStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 345, height: 114.58)
                    .background(Color(red: 1, green: 0.47, blue: 0))
                    .cornerRadius(15)
                    .offset(x: 0, y: 0)
                Text("10.000,00€")
                    .font(Font.custom("Lexend", size: 50).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 0.29)
            }
            .frame(width: 345, height: 114.58)
            .offset(x: 0, y: -193.71)
            HStack(spacing: 218.67) {
                ZStack() {

                }
                .frame(width: 54, height: 21)
                .cornerRadius(32)
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 15.27, height: 10.97)

                        .offset(x: -3.67, y: -0.19)
                    ZStack() { }
                        .frame(width: 24.33, height: 11.33)
                        .offset(x: 21.17, y: 0)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 17, height: 10.67)

                        .offset(x: -24.83, y: 0)
                }
                .frame(width: 66.66, height: 11.34)
            }
            .padding(
                EdgeInsets(top: 12, leading: 21, bottom: 11, trailing: 14.67)
            )
            .frame(width: 375, height: 44)
            .offset(x: 0, y: -384)
            HStack(spacing: 0) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 134, height: 5)
                    .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                    .cornerRadius(100)
            }
            .padding(EdgeInsets(top: 21, leading: 121, bottom: 8, trailing: 120))
            .frame(width: 375, height: 34)
            .offset(x: 0, y: 389)
            HStack() {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 134, height: 5)
                    .background(.black)
                    .cornerRadius(100)
            }

            .padding(EdgeInsets(top: 21, leading: 121, bottom: 8, trailing: 120))
            .frame(width: 375, height: 34)
            .offset(x: 0, y: 389)

            Button(action: {
                // Azione da eseguire quando il pulsante "Indietro" viene premuto
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "chevron.left") // Icona SF Symbols "left"
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                    Text("Indietro")
                        .font(Font.custom("Inter", size: 24).weight(.bold))
                        .foregroundColor(.white)
                }
                .frame(width: 345, height: 82)
                .background(Color(red: 0, green: 0.79, blue: 0.51))
                .cornerRadius(30)
            }
            .offset(x: 0, y: 300)
        }

        .frame(width: 375, height: 812)
        .background(Color(red: 0.93, green: 0.93, blue: 0.93))
        .navigationBarHidden(true)

    }
}

struct SaldoView_Previews: PreviewProvider {
    static var previews: some View {
        SaldoView()
    }
}
