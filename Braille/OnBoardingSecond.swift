
import SwiftUI

enum AccessibilityOption {
    case standard
    case lowVision
    case totalBlindness
    case back
}

struct OnBoardingSecond: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .center) {
//                    VStack{
                        Image("Group1")
//                    } 
//                    .padding(.top, 200)
                    
                    VStack {    
                        Text("Benvenuto")
                            .font(Font.custom("Lexend", size: 22).weight(.semibold))
                            .tracking(0.88)
                            .foregroundColor(Color(red: 1, green: 0.47, blue: 0))
                            .padding(.bottom)
                        VStack{
                            HStack {
                                Spacer()
                                Text("Gestisci il tuo denaro in modo semplice e sicuro. Immergiti nel mondo Intesa.")
                                      .font(Font.custom("Lexend", size: 17).weight(.medium))
//                                      .lineSpacing(22)
                                      .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                Spacer()
                            }
                        }.padding(.bottom, 44)
                        
                        NavigationLink(destination: Secondd()) {
                            HStack {
                                Spacer()
                                VStack{
                                    
                                    Text(NSLocalizedString("Avanti", comment: ""))
                                        .font(Font.custom("Lexend", size: 17).weight(.bold))
                                                .lineSpacing(22)
                                                .foregroundColor(.white)
                                        .padding()
                                        .background(
                                            RoundedRectangle(cornerRadius: 14)
                                                .frame(width: 230 , height: 50)
                                                .foregroundColor(.accentColor)
                                        )
                                        .dynamicTypeSize(.large)
                                }
                            Spacer()}
                            Spacer()
                        }
                        
                    }
                }
            }
        }
    }
}

struct Secondd: View {
    var body: some View {
//        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    VStack{
                        Image("Group2")
                    }
//                    .padding(.top, 200)
                    
                    VStack {
                        VStack {
                            
                            Text("Notifiche")
                                  .font(Font.custom("Lexend", size: 22).weight(.semibold))
                                  .tracking(0.88)
                                  .foregroundColor(Color(red: 1, green: 0.47, blue: 0))
                                .padding()
                        }
//                        .padding(.top, 44)
                        VStack (alignment: .center){
                            Text("Mai più dimenticanze. Attiva le notifiche per ricevere promemoria personalizzati.")
                                  .font(Font.custom("Lexend", size: 17).weight(.medium))
//                                  .lineSpacing(22)
                                  .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                .padding()
                        }
                        .padding(.bottom, 44)
                        
                        NavigationLink(destination: Thirdd()) {
                            HStack(spacing: 10) {
                              Text("Abilita le notifiche")
                                .font(Font.custom("Lexend", size: 17).weight(.bold))
                                .lineSpacing(22)
                                .foregroundColor(.white)
                            }
                            .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
                            .frame(width: 230, height: 50)
                            .background(Color(red: 0.01, green: 0.62, blue: 0.35))
                            .cornerRadius(14)
//                            Spacer()
                        }
                        
                        HStack(spacing: 10) {
                          Text("Non ora")
                            .font(Font.custom("Lexend", size: 17).weight(.bold))
                            .lineSpacing(22)
                            .foregroundColor(Color(red: 0.01, green: 0.62, blue: 0.35))
                        }
                        .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
//                        .frame(width: 108, height: 50)
                        .cornerRadius(14);
                      }
                    
                }
//            }
        }
    }
}

struct Thirdd: View {
    var body: some View {
//        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    VStack{
                        Image("Group3")
                    }
//                    .padding(.top, 200)
                    
                    VStack {
                        VStack {
                            
                            Text(NSLocalizedString("Proteggiti dalla frode", comment: ""))
                                .font(Font.custom("Lexend-SemiBold", size: 24))
                                .tracking(0.96)
                                .foregroundColor(Color(red: 1, green: 0.47, blue: 0))
                                .padding()
                         
                            
                        }
                        .padding(.top, 44)
                        VStack{
                            Text("La tua sicurezza è la nostra priorità.  Intesa protegge le tue informazioni.")
                                .font(Font.custom("Lexend", size: 17))
                            
                            NavigationLink(destination: ProtezioneDati()){
                                Text("Scopri di più.")
                                    .font(Font.custom("Lexend", size: 17).weight(.medium))
                                    .foregroundColor(.accentColor)
                                
                            }
                        }.padding(.bottom, 44)
                        
                        NavigationLink(destination: Fourthh()) {
                            HStack(spacing: 10) {
                              Text("Autorizza accesso ai dati")
                                .font(Font.custom("Lexend", size: 17).weight(.bold))
                                .lineSpacing(22)
                                .foregroundColor(.white)
                            }
                            .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
//                            .frame(width: 230, height: 50)
                            .background(Color(red: 0.01, green: 0.62, blue: 0.35))
                            .cornerRadius(14);
//                            Spacer()
                        }
                        
                        HStack(spacing: 10) {
                          Text("Non ora")
                            .font(Font.custom("Lexend", size: 17).weight(.bold))
                            .lineSpacing(22)
                            .foregroundColor(Color(red: 0.01, green: 0.62, blue: 0.35))
                        }
                        .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
//                        .frame(width: 108, height: 50)
                        .cornerRadius(14)
                    }
                }
//            }
        }
    }
}

struct Fourthh: View {
    var body: some View {
//        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    VStack{
                        Image("Group4")
                    }
//                    .padding(.top, 200)
                    
                    VStack {
                        VStack {
                            
                            Text(NSLocalizedString("La tua privacy", comment: ""))
                                .font(Font.custom("Lexend-SemiBold", size: 24))
                                .tracking(0.96)
                                .foregroundColor(Color(red: 1, green: 0.47, blue: 0))
                                .padding()
                        }
                        .padding(.top, 44)
                        VStack{
                            Text("Imposta la Modalità Privacy con un \n singolo tap sul retro del tuo cellulare. Provala ora")
                                .font(Font.custom("Lexend", size: 17))
                            NavigationLink(destination: Privacy()){
                                Text("Provala ora")
                                    .font(Font.custom("Lexend", size: 17).weight(.medium))
                                    .foregroundColor(.accentColor)
                                
                            }
                       
                        }.padding(.bottom, 44)
                        
                        NavigationLink(destination: Fifthh()) {
                            HStack(spacing: 10) {
                              Text("Abilita modalità privacy")
                                .font(Font.custom("Lexend", size: 17).weight(.bold))
                                .lineSpacing(22)
                                .foregroundColor(.white)
                            }
                            .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
//                            .frame(width: 230, height: 50)
                            .background(Color(red: 0.01, green: 0.62, blue: 0.35))
                            .cornerRadius(14)
//                            Spacer()
                        }
                        HStack(spacing: 10) {
                          Text("Non ora")
                            .font(Font.custom("Lexend", size: 17).weight(.bold))
                            .lineSpacing(22)
                            .foregroundColor(Color(red: 0.01, green: 0.62, blue: 0.35))
                        }
                        .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
//                        .frame(width: 108, height: 50)
                        .cornerRadius(14)
                    }
                }
//            }
        }
    }
}

struct Fifthh: View {
    var body: some View {
//        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    VStack{
                        Image("Group5")
                    }
//                    .padding(.top, 200)
                    
                    VStack {
                        VStack {
                            
                            Text(NSLocalizedString("Accessibilità", comment: ""))
                                .font(Font.custom("Lexend-SemiBold", size: 24))
                                .tracking(0.96)
                                .foregroundColor(Color(red: 1, green: 0.47, blue: 0))
                                .padding()
                        }
                        .padding(.top, 44)
                        VStack{
                            Text("Personalizza le impostazioni di accessibilità per un'esperienza bancaria su misura per te.")
                                .font(Font.custom("Lexend", size: 17))
                                .padding()
                        }.padding(.bottom, 44)
                        
                        NavigationLink(destination: Sixthh()) {
                            HStack(spacing: 10) {
                              Text("Personalizza ora")
                                .font(Font.custom("Lexend", size: 17).weight(.bold))
                                .lineSpacing(22)
                                .foregroundColor(.white)
                            }
                            .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
                            .frame(width: 230, height: 50)
                            .background(Color(red: 0.01, green: 0.62, blue: 0.35))
                            .cornerRadius(14)
//                            Spacer()
                        }
                        
                        HStack(spacing: 10) {
                          Text("Non ora")
                            .font(Font.custom("Lexend", size: 17).weight(.bold))
                            .lineSpacing(22)
                            .foregroundColor(Color(red: 0.01, green: 0.62, blue: 0.35))
                        }
                        .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
//                        .frame(width: 108, height: 50)
                        .cornerRadius(14)
                    }
                }
//            }
        }
    }
}

struct Sixthh: View {
    var body: some View {
//        NavigationView {
            ZStack {
                VStack(alignment: .center) {
                    VStack{
                        Image("Group6")
                    }
//                    .padding(.top, 200)
                    
                    VStack {
                        VStack {
                            
                            Text(NSLocalizedString("Iniziamo", comment: ""))
                                .font(Font.custom("Lexend-SemiBold", size: 24))
                                .tracking(0.96)
                                .foregroundColor(Color(red: 1, green: 0.47, blue: 0))
                                .padding()
                        }
                        .padding(.top, 44)
                        VStack{
                            Text("E' tutto pronto \n con Intesa.")
                                .font(Font.custom("Lexend", size: 17))
                                .padding()
                        }.padding(.bottom, 44)
                        
                        NavigationLink(destination: SelezioneVisione()) {
                            HStack(spacing: 10) {
                              Text("Accedi")
                                .font(Font.custom("Lexend", size: 17).weight(.bold))
                                .lineSpacing(22)
                                .foregroundColor(.white)
                            }
                            .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
                            .frame(width: 230, height: 50)
                            .background(Color(red: 0.01, green: 0.62, blue: 0.35))
                            .cornerRadius(14)
//                            Spacer()
                        }
                    }
                }
//            }
        }
    }
}


struct SelezioneVisione: View {
    
    @State private var selectedOption: AccessibilityOption?
    
    var body: some View {
//        NavigationView {
            ZStack() {
                VStack(spacing: 15) {
                    Text("Accessibilità")
                        .font(Font.custom("Lexend", size: 22).weight(.semibold))
                        .tracking(0.88)
                        .foregroundColor(Color(red: 1, green: 0.47, blue: 0))
                    Text("Intesa si adatta a te. \nSeleziona la modalità di accessibilità più adatta a te.")
                        .font(Font.custom("Lexend", size: 17).weight(.medium))
                        .padding()
                        .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                        .multilineTextAlignment(.center)
                    
                }
                .offset(x: 0, y: -228.50)
                Button(action: {
                    self.selectedOption = .standard
                }) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 345, height: 100)
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                        .overlay(
                            Text("Modalità Standard")
                                .font(Font.custom("Lexend", size: 22).weight(.medium))
                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                .offset(x: 0.50, y: -0.50)
                        )
                }
                .offset(x: 0, y: -94)
                .background( NavigationLink(
                                        destination: ContentView(),
                                        isActive: Binding<Bool>(
                                            get: { self.selectedOption == .standard },
                                            set: { _ in }
                                        )
                                    ) {
                                        EmptyView()
                                    }
                                )
                Button(action: {
                    self.selectedOption = .lowVision
                }) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 345, height: 100)
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                        .overlay(
                            Text("Ipovisione")
                                .font(Font.custom("Lexend", size: 22).weight(.medium))
                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                .offset(x: 0.50, y: -0.50)
                        )
                }
                .offset(x: 0, y: 26)
                .background(
                         NavigationLink(
                             destination: SecondVersion(),
                             isActive: Binding<Bool>(
                                 get: { self.selectedOption == .lowVision },
                                 set: { _ in }
                             )
                         ) {
                             EmptyView()
                         }
                     )
                
                Button(action: {
                    self.selectedOption = .totalBlindness
                }) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 345, height: 100)
                        .foregroundColor(Color(red: 0.95, green: 0.95, blue: 0.95))
                        .overlay(
                            Text("Cecità Totale")
                                .font(Font.custom("Lexend", size: 22).weight(.medium))
                                .foregroundColor(Color(red: 0.20, green: 0.20, blue: 0.20))
                                .offset(x: 0, y: -0.50)
                        )
                }
                .offset(x: 0, y: 146)
                .background(
                                    NavigationLink(
                                        destination: Page2(),
                                        isActive: Binding<Bool>(
                                            get: { self.selectedOption == .totalBlindness },
                                            set: { _ in }
                                        )
                                    ) {
                                        EmptyView()
                                    }
                                )
                
             
                Button(action: {
                    // Aggiungi l'azione da eseguire quando il bottone viene premuto
                }) {
                    Text("Salva")
                        .font(Font.custom("Lexend", size: 17).weight(.bold))
                        .lineSpacing(22)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
                        .background(Color(red: 0.01, green: 0.62, blue: 0.35))
                        .cornerRadius(14)
                }
                .padding(EdgeInsets(top: 14, leading: 20, bottom: 14, trailing: 20))
                .frame(width: 230)
                .background(Color(red: 0.01, green: 0.62, blue: 0.35))
                .cornerRadius(14)
                .offset(x: 0.50, y: 300)
            }
            .frame(width: 375, height: 812)
            .background(.white);
//        }
    }
}
struct ProtezioneDati: View {
  var body: some View {
   
          
          Image("protezioneDati")
            
      
      
  }
}
struct Privacy: View {
  var body: some View {
   
          
          Image("Privacy2")
          .padding(.bottom,150)
    
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingSecond()
        Secondd()
    }
}

