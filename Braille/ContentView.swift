//
//  ContentView.swift
//  Braille
//
//  Created by Eliana Ecuba on 08/10/23.
//

import SwiftUI
let onboardingCompletedKey = "OnboardingCompleted"


struct ContentView: View {
    
    @State private var selectedOption: AccessibilityOption?
    @AppStorage(onboardingCompletedKey) var onboardingCompleted: Bool = false
    
    var body: some View {
        
        
//        if onboardingCompleted {
//            // L'onboarding è stato già completato, mostra la vista principale dell'app
//            ContentView()
//        } else {
//            // Mostra l'onboarding
//            OnBoardingSecond()
//                .onDisappear {
//                    // Quando l'onboarding è completato, imposta il valore su true
//                    onboardingCompleted = true
//                }
//        }
    
        
        
        TabView {
            ContiView()
                .tabItem { Image("icon_wallet")
                    Text("Conti")}
            CarteView()
                .tabItem { Image("icon_card")
                    Text("Carte") }
            OperazioniView()
                .tabItem { Image("icon_money")
                    Text("Operazioni") }
            ParlaView()
                .tabItem { Image("icon_talk")
                    Text("Parla con noi") }
            AltroView()
                .tabItem { Image("icon_list")
                    Text("Altro") }
        }
        .onAppear(){ self.selectedOption = .back }
//        .navigationBarHidden(true)
        
    }
}

#Preview {
    ContentView()
}
