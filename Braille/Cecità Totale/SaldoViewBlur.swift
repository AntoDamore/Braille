import SwiftUI
import CoreHaptics
import Foundation

struct SaldoViewBlur: View {
    @State private var engine: CHHapticEngine?
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var actionText = ""
    @State private var isSimultaneousTap = false
    @State private var isGifPlaying = false
    @State private var isBlurred = false // Aggiungi una variabile di stato per la sfocatura

    var body: some View {
        ZStack() {
            ZStack() {
                Text("Saldo")
                    .font(Font.custom("Lexend", size: 32).weight(.bold))
                    .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                    .offset(x: -129, y: -100)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 345, height: 114.58)
                    .background(Color(red: 1, green: 0.47, blue: 0))
                    .cornerRadius(15)
                    .offset(x: 0, y: 0)
                    .blur(radius: isBlurred ? 10 : 0) // Applica la sfocatura se isBlurred è true
                Text("10.000,00€")
                    .font(Font.custom("Lexend", size: 50).weight(.bold))
                    .foregroundColor(.white)
                    .offset(x: 0, y: 0.29)
                    .blur(radius: isBlurred ? 10 : 0) // Applica la sfocatura se isBlurred è true
            }
            .frame(width: 345, height: 114.58)
            .offset(x: 0, y: -193.71)
            .onTapGesture {
                isSimultaneousTap.toggle()
                generateHapticFeedback(intensity: 1.0, count: 6)

                // Avvia la GIF contemporaneamente alla vibrazione
                isGifPlaying = true
                isBlurred = true // Attiva la sfocatura quando si preme sullo ZStack

                // Ferma la GIF dopo 6 secondi
                Timer.scheduledTimer(withTimeInterval: 7.0, repeats: false) { _ in
                    isGifPlaying = false
                    isBlurred = false // Disattiva la sfocatura
                }
            }

            if isGifPlaying {
                GifImage("1", speed: 1.0)
                    .frame(width: 110, height: 160)
            }

            Text(actionText)
                .padding(.top, 20)
            Button(action: {
                // Azione da eseguire quando il pulsante "Indietro" viene premuto
                self.presentationMode.wrappedValue.dismiss()
            }) {
                HStack {
                    Image(systemName: "chevron.left")
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
        .navigationBarHidden(true)

        .frame(width: 375, height: 812)
        .background(Color(red: 0.93, green: 0.93, blue: 0.93))
        .onAppear {
            startHapticEngine()
        }
    }

    private func generateHapticFeedback(intensity: Float, count: Int) {
        guard let engine = engine else { return }

        let intensityParameter = CHHapticEventParameter(parameterID: .hapticIntensity, value: intensity)
        let sharpnessParameter = CHHapticEventParameter(parameterID: .hapticSharpness, value: 1.0)

        for i in 1...count {
            let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensityParameter, sharpnessParameter], relativeTime: TimeInterval(i))

            do {
                let pattern = try CHHapticPattern(events: [event], parameters: [])
                let player = try engine.makePlayer(with: pattern)
                try engine.start()
                try player.start(atTime: CHHapticTimeImmediate)
            } catch {
                print("Errore nella riproduzione delle vibrazioni: \(error.localizedDescription)")
            }
        }
    }

    private func startHapticEngine() {
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("Errore nell'avvio del motore tattile: \(error.localizedDescription)")
        }
    }
}

struct Page7_Previews: PreviewProvider {
    static var previews: some View {
        SaldoViewBlur()
    }
}
