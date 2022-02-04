

import SwiftUI
import Foundation
import AVKit


struct Inicio: View {
    
    @State var voltarmenu: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            ZStack(){
                
                
  /* ------------------- background -------------------- */
                
                //imagem background
                Image("background")
                    .scaledToFill()
                    .clipped()
                    .edgesIgnoringSafeArea([.all])

                    
                VStack(){
                    
                    
  /* ------------------- Imagens -------------------- */
                    
                    //Imagem pokemon
                    Image("pokemonTitulo")
                        .resizable()
                        .clipped()
                        .edgesIgnoringSafeArea([.all])
                        .frame(width: 300, height: 100, alignment: .topLeading)
                        
                    Spacer()
                            .frame(height: 50)
                    
                    //Imagem Logo
                    Image("logo2")
                        .resizable()
                        .scaledToFit()
                        .clipped()
                        .frame(width: 200, height: 200, alignment: .topLeading)
                    
                    Spacer()
                            .frame(height: 50)
                    
  /* ------------------- Botoes -------------------- */
                    
                    
                    //Botão Jogador vs Jogador
                    Button(action: {}) {
                        NavigationLink(destination: pick(voltarmenu:$voltarmenu), isActive: $voltarmenu){
                        Text("Jogador vs Jogador")
                            .fontWeight(.heavy)
                            .glowBorder(color: .black, lineWidth: 5)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)   
                            .padding(.horizontal, 62)
                            .padding(.vertical, 10)
                            .background(Color.orange)
                            .cornerRadius(15)
                        }.navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                    }.glowBorder(color: .black, lineWidth: 6)
                    
                    
                    Spacer()
                        .frame(height:30)
                    
                   //Botão Jogador vs Computador
                    Button(action: {}) {
                        NavigationLink(destination: escolherpc(voltarmenu:$voltarmenu), isActive: $voltarmenu){
                        Text("Jogador vs Computador")
                            .fontWeight(.heavy)
                            .glowBorder(color: .black, lineWidth: 5)
                            .font(.system(size: 20))
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 10)
                            .background(Color.orange)
                            .cornerRadius(15)
                        }
                    }.glowBorder(color: .black, lineWidth: 6)
            
                    Spacer()
                        .frame(height:30)
                    //Botão Pokedex
                    Button(action: {}) {
                        NavigationLink(destination: ContentView()){
                            Text("Pokedex")
                                .fontWeight(.heavy)
                                .glowBorder(color: .black, lineWidth: 5)
                                .font(.system(size: 27))
                                .foregroundColor(Color.white)
                                .padding(.horizontal, 100)
                                .padding(.vertical, 1)
                                .background(Color.orange)
                                .cornerRadius(15)
                            
                            
                        }
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                    }.glowBorder(color: .black, lineWidth: 6)
                    
                    Spacer()
                            .frame(height: 100)
 
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}


/*
struct Inicio_Previews: PreviewProvider {
    static var previews: some View {
        Inicio()
    }
}
*/
