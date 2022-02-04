
import SwiftUI

struct ContentView: View {
   
    @State var Pokedex:[tipoPokemon] = [
        
    tipoPokemon(tipo: "Eletrico", pokemons:[
        Pokemon(nome: "Pikachu", imgtype: "eletrico" , img: "pikachu", xp: 0)]),
    
    tipoPokemon(tipo: "Normal", pokemons:[
        Pokemon(nome: "Bidoof", imgtype: "normal", img: "bidoof", xp: 0)]),
    
    tipoPokemon(tipo: "Psiquico", pokemons: [
        Pokemon(nome: "Mew", imgtype: "psiquico", img: "mew", xp: 0)]),
    
    tipoPokemon(tipo: "Planta", pokemons: [
        Pokemon(nome: "bulbassaur", imgtype: "planta", img: "bulbassaur", xp: 0)]),

    tipoPokemon(tipo: "Inseto", pokemons: [
        Pokemon(nome: "Caterpie", imgtype: "inseto", img: "caterpie", xp: 0)]),
    
    tipoPokemon(tipo: "Dragao", pokemons: [
        Pokemon(nome: "Druddigon", imgtype: "dragao", img: "druddigon", xp: 0)]),
    
    tipoPokemon(tipo: "Fantasma", pokemons: [
        Pokemon(nome: "Vanillite", imgtype: "fantasma", img: "vanillite", xp: 0)]),
    
    tipoPokemon(tipo: "Voador", pokemons: [
        Pokemon(nome: "Pidove", imgtype: "voador", img: "pidove", xp: 0)]),
    
    tipoPokemon(tipo: "Pedra", pokemons: [
        Pokemon(nome: "Geodude", imgtype: "pedra", img: "geodude", xp: 0)]),
    
    tipoPokemon(tipo: "Agua", pokemons: [
        Pokemon(nome: "Wishiwashi", imgtype: "agua", img: "wishiwashi", xp: 0)]),
    
    tipoPokemon(tipo: "Fogo", pokemons: [
        Pokemon(nome: "Charmander", imgtype: "fogo", img: "charmander", xp: 0)])
    
    ]
   
        var body: some View {
            
            
            NavigationView{
                
                List{
                    
               
                    ForEach(Pokedex){ tipo in
                        Section {
                            ForEach(tipo.pokemons){ pokemon in
                                NavigationLink {
                                    pokeDetalhes(pokemon: pokemon)
                                        .background(Color.gray)
                                        .foregroundColor(Color.white)
                                        .navigationBarHidden(true)
                                        .navigationBarBackButtonHidden(true)
                                }
                                
                                label: {
                                    ListLine(pokemon: pokemon)
                                }.foregroundColor(Color.white)
                            }.listRowBackground(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.013, brightness: 0.658)/*@END_MENU_TOKEN@*/)
                             .background(/*@START_MENU_TOKEN@*/Color(hue: 1.0, saturation: 0.013, brightness: 0.658)/*@END_MENU_TOKEN@*/)
                            
                        } header: {
                            Text(tipo.tipo)
                        }.foregroundColor(Color.white)
                    }
                    
                }.background(Color.gray)
                .navigationTitle("Pokedex")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationBarBackButtonHidden(true)
            }

        }

        
    init(){
        UITableView.appearance().backgroundColor = .clear
                UITableViewCell.appearance().backgroundColor = .clear
    }
}
/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
*/
