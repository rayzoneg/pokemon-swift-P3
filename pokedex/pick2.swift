
import SwiftUI

struct pick2: View {

    @Binding var voltarmenu: Bool
    @State var k1: Pokemon
    
    
    @State var Pokedex:[tipoPokemon] = [
        
    tipoPokemon(tipo: "Eletrico", pokemons:[
        Pokemon(nome: "Pikachu", imgtype: "eletrico" , img: "pikachu", xp: 50)]),
    
    tipoPokemon(tipo: "Normal", pokemons:[
        Pokemon(nome: "Bidood", imgtype: "normal", img: "bidoof", xp: 50)]),
    
    tipoPokemon(tipo: "Psiquico", pokemons: [
        Pokemon(nome: "Mew", imgtype: "psiquico", img: "mew", xp: 50)]),
    
    tipoPokemon(tipo: "Planta", pokemons: [
        Pokemon(nome: "bulbassaur", imgtype: "planta", img: "bulbassaur", xp: 50)]),

    tipoPokemon(tipo: "Inseto", pokemons: [
        Pokemon(nome: "Caterpie", imgtype: "inseto", img: "caterpie", xp: 50)]),
    
    tipoPokemon(tipo: "Dragao", pokemons: [
        Pokemon(nome: "Druddigon", imgtype: "dragao", img: "druddigon", xp: 50)]),
    
    tipoPokemon(tipo: "Fantasma", pokemons: [
        Pokemon(nome: "Vanillite", imgtype: "fantasma", img: "vanillite", xp: 50)]),
    
    tipoPokemon(tipo: "Voador", pokemons: [
        Pokemon(nome: "Pidove", imgtype: "voador", img: "pidove", xp: 50)]),
    
    tipoPokemon(tipo: "Pedra", pokemons: [
        Pokemon(nome: "Geodude", imgtype: "pedra", img: "geodude", xp: 50)]),
    
    tipoPokemon(tipo: "Agua", pokemons: [
        Pokemon(nome: "Wishiwashi", imgtype: "agua", img: "wishiwashi", xp: 50)]),
    
    tipoPokemon(tipo: "Fogo", pokemons: [
        Pokemon(nome: "Charmander", imgtype: "fogo", img: "charmander", xp: 100)])
    
    ]
   
        var body: some View {
            
            
            NavigationView{
                
                List{
                    
               
                    ForEach(Pokedex){ tipo in
                        Section {
                            ForEach(tipo.pokemons){ pokemon in
                                NavigationLink {
                                    Battle(back: $voltarmenu, k1:k1, k2:pokemon)
                                        .background(Color.gray)
                                        .foregroundColor(Color.white)
                                }
                                label: {
                                    ListLine(pokemon: pokemon)
                                }.foregroundColor(Color.white)
                            }.listRowBackground(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.013, brightness: 0.658)/*@END_MENU_TOKEN@*/)
                             .background(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.013, brightness: 0.658)/*@END_MENU_TOKEN@*/)
                            
                        } header: {
                            Text(tipo.tipo)
                        }.foregroundColor(Color.white)
                    }.background(Color.gray)
                    .navigationTitle("jogador 2")
                    .navigationBarTitleDisplayMode(.automatic)
                    .navigationBarBackButtonHidden(true)
                    
                    
                }.background(Color.gray)
            }.background(Color.gray)
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            

        }

   /* init(){
        UITableView.appearance().backgroundColor = .clear
                UITableViewCell.appearance().backgroundColor = .clear
    }

    */
}
/*
struct pick2_Previews: PreviewProvider {
    static var previews: some View {
        pick2()
.previewInterfaceOrientation(.portrait)
    }
}
*/

