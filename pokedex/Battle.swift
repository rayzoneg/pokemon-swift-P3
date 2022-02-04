

import SwiftUI

struct Battle: View {
                
    @State  private var cpuCard = "pikachu"
    
    
    
    @Binding var back: Bool
    
    
    
    @State var k1: Pokemon

    @State var k2: Pokemon
    
    @State var healthp1 = 100
    @State var healthp2 = 100
    @State var Alertap1: String = "Jogador 2 ganhou!!!"
    @State var Alertap2: String = "Jogador 1 ganhou!!!"
    @State var mostrarAlerta1: Bool = false
    @State var mostrarAlerta2: Bool = false
    
    
    @State private var showingAlert = false
    
    
    var body: some View {
        

            
        
        ZStack(){
        
            Image("Battlefield")
                .resizable()
                .scaledToFill()
                .clipped()
                .edgesIgnoringSafeArea([.all])

        
            VStack{
                
                Text("Jogue 1 de cada vez")
                    .fontWeight(.heavy)
                    .glowBorder(color: .black, lineWidth: 5)
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 62)
                    .padding(.vertical, 10)
                    .background(Color.orange)
                    .cornerRadius(15)
                    .border(Color.white, width: 3)
                        .cornerRadius(15)
                        .glowBorder(color: .black, lineWidth: 5)
            
                Spacer()
                    .frame(height:50)
           HStack{
               
               VStack{
                   
                   Button(action: {
                       healthp1 = healthp1-10
                       if(healthp1 > 0){
                               mostrarAlerta1 = false
                       }else{
                           mostrarAlerta1 = true
                       }
                   }, label: {
                       Text("Ataque 1")
                           .fontWeight(.heavy)
                           .glowBorder(color: .black, lineWidth: 5)
                           .font(.system(size: 20))
                           .foregroundColor(Color.white)
                           .padding(.horizontal, 20)
                           .padding(.vertical, 10)
                           .background(Color.orange)
                           .cornerRadius(15)
                           .padding(EdgeInsets(top: 10, leading: 10, bottom: 5, trailing: 10))
                   })
                   .glowBorder(color: .black, lineWidth: 5)
                   
                   Button(action: {
                       healthp1 = healthp1-30
                       if(healthp1 > 0){
                               mostrarAlerta1 = false
                       }else{
                           mostrarAlerta1 = true
                       }
                   }, label: {
                       Text("Ataque 2")
                           .fontWeight(.heavy)
                           .glowBorder(color: .black, lineWidth: 5)
                           .font(.system(size: 20))
                           .foregroundColor(Color.white)
                           .padding(.horizontal, 20)
                           .padding(.vertical, 10)
                           .background(Color.orange)
                           .cornerRadius(15)
                           .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                   })
                   .glowBorder(color: .black, lineWidth: 5)
                   
                       Button(action: {
                           healthp1 = healthp1-30
                           if(healthp1 > 0){
                                   mostrarAlerta1 = false
                           }else{
                               mostrarAlerta1 = true
                           }
                       }, label: {
                           Text("Ataque 3")
                               .fontWeight(.heavy)
                               .glowBorder(color: .black, lineWidth: 5)
                               .font(.system(size: 20))
                               .foregroundColor(Color.white)
                               .padding(.horizontal, 20)
                               .padding(.vertical, 10)
                               .background(Color.orange)
                               .cornerRadius(15)
                               .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                       })
                       .glowBorder(color: .black, lineWidth: 5)
               
                   
               
               }
            
                   
               VStack{
                   
                   Text(self.k2.nome)
                       .font(.largeTitle)
                       .foregroundColor(.white)
                       .padding(.vertical, 5)
                       .padding(.horizontal, 25)
                       .background(Capsule().stroke(Color.white, lineWidth: 2))
                       
                   Image(uiImage: self.k2.img)
                       .resizable()
                       .scaledToFill()
                       .frame(width: 120, height: 120)
                   
                   VStack{
                       Text("HP:\(healthp2)")
                       
                   }
                   .foregroundColor(.white)
                   
                   ProgressView(value: Float(healthp2), total: 100)
                         .frame(width: 150, height: 8, alignment: .center)
                         .accentColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                         .border(Color.black, width: 1)
                         .cornerRadius(5)
                
                   }
               }
               
                
                Spacer()
                    .frame(height:100)
                
               HStack{
                   
                   VStack{
                       Text(self.k1.nome)
                           .font(.largeTitle)
                           .foregroundColor(.white)
                           .padding(.vertical, 5)
                           .padding(.horizontal, 10)
                           .background(Capsule().stroke(Color.white, lineWidth: 2))
                   
                       Image(uiImage: self.k1.img)
                           .resizable()
                           .scaledToFill()
                           .frame(width: 120, height: 120)
                       
                       VStack{
                           Text("HP:\(healthp1)")
                           
                       }
                       .foregroundColor(.white)
                       
                         ProgressView(value: Float(healthp1), total: 100)
                               .frame(width: 150, height: 8, alignment: .center)
                               .accentColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                               .border(Color.black, width: 1)
                               .cornerRadius(5)
                   }
                   
                   VStack{
                          
                           Button(action: {
                               healthp2 = healthp2-10
                               if(healthp2 > 0){
                                   mostrarAlerta2 = false
                               }else{
                                   mostrarAlerta2 = true
                               }
                           }, label: {
                               Text("Ataque 1")
                                   .fontWeight(.heavy)
                                   .glowBorder(color: .black, lineWidth: 5)
                                   .font(.system(size: 20))
                                   .foregroundColor(Color.white)
                                   .padding(.horizontal, 20)
                                   .padding(.vertical, 10)
                                   .background(Color.orange)
                                   .cornerRadius(15)
                                   .padding(EdgeInsets(top: 10, leading: 10, bottom: 5, trailing: 10))
                           })
                           .glowBorder(color: .black, lineWidth: 5)
                           
                           Button(action: {
                               healthp2 = healthp2-50
                               if(healthp2 > 0){
                                       mostrarAlerta2 = false
                               }else{
                                   mostrarAlerta2 = true
                               }
                           }, label: {
                               Text("Ataque 2")
                                   .fontWeight(.heavy)
                                   .glowBorder(color: .black, lineWidth: 5)
                                   .font(.system(size: 20))
                                   .foregroundColor(Color.white)
                                   .padding(.horizontal, 20)
                                   .padding(.vertical, 10)
                                   .background(Color.orange)
                                   .cornerRadius(15)
                                   .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                           })
                           .glowBorder(color: .black, lineWidth: 5)
                       
                           Button(action: {
                               healthp2 = healthp2-30
                               if(healthp2 > 0){
                                       mostrarAlerta2 = false
                               }else{
                                   mostrarAlerta2 = true
                               }
                           }, label: {
                               Text("Ataque 3")
                                   .fontWeight(.heavy)
                                   .glowBorder(color: .black, lineWidth: 5)
                                   .font(.system(size: 20))
                                   .foregroundColor(Color.white)
                                   .padding(.horizontal, 20)
                                   .padding(.vertical, 10)
                                   .background(Color.orange)
                                   .cornerRadius(15)
                                   .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
                           })
                           .glowBorder(color: .black, lineWidth: 5)
                       
                   }

               }
                
            }.navigationBarBackButtonHidden(true)
    
        }.alert(Alertap1,isPresented: $mostrarAlerta1) {
            Button("Voltar ao menu Inicial", role: .cancel) { back = false }
            
        }.alert(Alertap2,isPresented: $mostrarAlerta2) {
                Button("Voltar ao menu Inicial", role: .cancel) { back = false }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }    
}
/*
struct Battle_Previews: PreviewProvider {
    static var previews: some View {
        Battle(yes: Pokemon(nome: "charmander", imgtype: "fogo", img: "charmander", xp: 50), back: false)
    }
}
*/
