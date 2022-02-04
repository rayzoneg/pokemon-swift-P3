

import SwiftUI

struct ListLine: View {
    @State var pokemon:Pokemon
    var body: some View {
        ZStack{
            HStack{
                Image(uiImage: self.pokemon.img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                
                VStack{
                    Text(self.pokemon.nome)
                    Image(uiImage: self.pokemon.imgtype)
                    .resizable()
                    
                    .frame(width: 40, height: 20)
                    
                    
                }
                
            }
        }
        
    }
}
struct ListLine_Previews: PreviewProvider {
    static var previews: some View {
        ListLine(pokemon:  Pokemon(nome: "pikachu", imgtype: "eletrico", img: "pikachu", xp: 50))
            .frame(height: 5.0)
            
    }
}
