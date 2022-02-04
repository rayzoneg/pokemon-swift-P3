

import SwiftUI
import Foundation
import AVKit


struct start: View {

    @State var audioPlayer: AVAudioPlayer!
    
    
    var body: some View {
        
        NavigationView {
            
            ZStack(){
                
                
  /* ------------------- background -------------------- */
                
                //imagem background
                Image("background")
                    .resizable()
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
                    
                    //Botão Jogar
                    Button(action: {}) {
                        NavigationLink(destination: Inicio()){
                            Text("Jogar")
                                .fontWeight(.heavy)
                                .glowBorder(color: .black, lineWidth: 5)
                                .font(.system(size: 27))
                                .foregroundColor(Color.white)
                                .padding(.horizontal, 30)
                                .padding(.vertical, 1)
                                .background(Color.orange)
                                .cornerRadius(15)
                            
                            
                        }.navigationBarTitle("",displayMode: .inline)
                        .navigationBarHidden(true)
                        .navigationBarBackButtonHidden(true)
                    }.glowBorder(color: .black, lineWidth: 6)
                    
                    Spacer()
                            .frame(height: 100)
                    
                    
                    
  /* --------------------- Musica -------------------- */
                    
                    
                    VStack{
                        
                        Text("Botões de musica")
                            .fontWeight(.heavy)
                            .glowBorder(color: .black, lineWidth: 5)
                            .font(.system(size: 27))
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 50)
                            .padding(.vertical, 1)
                            .background(Color.orange)
                            .cornerRadius(15)
                            .glowBorder(color: .black, lineWidth: 6)
                    
                        Spacer()
                            .frame(height: 20)
                        
                        
                     HStack {
                         

                         
                         Button(action: {self.audioPlayer.play()}) {
                            Image(systemName: "play.circle.fill").resizable()
                                 .frame(width: 50, height: 50)
                                 .aspectRatio(contentMode: .fit)
                                 .foregroundColor(Color.white)
                         }
                         
                         Spacer()
                             .frame(width: 30)
                             .navigationBarBackButtonHidden(true)
                         Button(action: {self.audioPlayer.pause()}) {
                             Image(systemName: "pause.circle.fill").resizable()
                                 .frame(width: 50, height: 50)
                                 .aspectRatio(contentMode: .fit)
                                 .foregroundColor(Color.white)
                         }

                    }
                    .onAppear {
                        let sound = Bundle.main.path(forResource: "song1", ofType: "mp3")
                        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    }
                }
                }
            }
            
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}


struct start_Previews: PreviewProvider {
    static var previews: some View {
        start()
    }
}


