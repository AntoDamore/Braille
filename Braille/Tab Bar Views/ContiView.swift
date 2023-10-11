//
//  ContiView.swift
//  Braille
//
//  Created by Eliana Ecuba on 08/10/23.
//

import SwiftUI



struct ContiView: View {
    var body: some View {
        
        NavigationView{
            
            
            VStack(alignment: .center) {
                
                Spacer(minLength: 30)
                HStack(alignment:.center) {
                    VStack(alignment: .leading, spacing: 10.0) {
                        
                        
                        
                        // Default / Regular / Body
                        Text("Saldo totale")
                            .font(Font.custom("Lexend-Regular", size: 15))
                            .foregroundColor(.white)
                        
                        
                        
                        
                        
                        Text("15.232,00€")
                            .font(
                                Font.custom("Lexend-Bold", size: 34)
                                    .weight(.bold)
                            )
                            .foregroundColor(.white)
                            .frame(width: 199.58017, alignment: .topLeading)
                        
                        
                    }
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                    
                }
                
                
                .frame(maxWidth: 295, maxHeight: 110, alignment: .leading)
                .padding(.all, 25)
                
                .background(Color(red: 0.01, green: 0.62, blue: 0.35))
                .cornerRadius(18.0)
                
                Image("spese_img")
                
                NavigationStack {
                    List {
                        HStack(alignment: .top){
                            Image("iconList")
                            VStack(alignment: .leading){ Text("Conto Famiglia")
                                    .font(Font.custom("Lexend-Light", size: 20))
                                
                                Text("C/C n1000/0002")
                                    .font(Font.custom("Lexend-ExtraLight", size: 15))
                            }
                            Spacer()
                            
                            Text("10.000.00€")
                        }
                        .font(Font.custom("Lexend-Bold", size: 17))
                        
                        HStack(alignment: .top){
                            Image("iconList")
                            VStack(alignment: .leading){ Text("Conto Famiglia")
                                    .font(Font.custom("Lexend-Light", size: 20))
                                
                                Text("C/C n1000/0002")
                                    .font(Font.custom("Lexend-ExtraLight", size: 15))
                            }
                            Spacer()
                            
                            Text("10.000.00€")
                        }
                        .font(Font.custom("Lexend-Bold", size: 17))
                        
                        HStack(alignment: .top){
                            Image("iconList")
                            VStack(alignment: .leading){ Text("Conto Famiglia")
                                    .font(Font.custom("Lexend-Light", size: 20))
                                
                                Text("C/C n1000/0002")
                                    .font(Font.custom("Lexend-ExtraLight", size: 15))
                            }
                            Spacer()
                            
                            Text("10.000.00€")
                        }
                        .font(Font.custom("Lexend-Bold", size: 17))
                    }
                    .navigationTitle("Conti")
                    .toolbar {
                        VStack{
                            Spacer(minLength: 100)
                        Text("Mostra altro")
                                .font(Font.custom("Lexend-ExtraLight", size: 15))
                                .foregroundColor(.accentColor)
                            
                        }}
                    .listStyle(.grouped)
                    .scrollContentBackground(.hidden)
                    
                }
                .background(.white)
                
            }
            .navigationTitle("La mia situazione")
            .toolbar {
                HStack{
                Text("Ciao, Carla")
                        .font(Font.custom("Lexend-ExtraLight", size: 17))
                    
                    Spacer(minLength: 225)
                    
                    Image("carlaIcon")
                }}
            
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ContiView()
}
