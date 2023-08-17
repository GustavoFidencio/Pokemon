//
//  HomeListItem.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 14/08/23.
//

import SwiftUI

struct HomeListItem: View {
    
    private var Poke: SimplePoke
    @ObservedObject var viewModel: PokeViewModel

    init(Poke: SimplePoke) {
        self.Poke = Poke
        self.viewModel = PokeViewModel(url: self.Poke.url)
    }
    
    let imageURL = URL(string: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png")!
    
    var body: some View {
        VStack {
            if viewModel.isLoad {
               ProgressView("Carregando...")
                   .padding()
            } else {
                
                if let sprites = viewModel.poke.sprites {
                    if let image = URL(string: sprites.front_default!) {
                        
                        AsyncImage(url: image){ image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            // Placeholder enquanto a imagem está sendo carregada
                            Color.gray
                                .frame(width: 100, height: 100) // Tamanho do placeholder
                        }
                        .frame(width: .infinity, height: .infinity)
                    }
                }
                
                Text(Poke.name.capitalize)
                    .font(.headline)
            }
        }
        .padding(20)
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth:.infinity, maxHeight: .infinity)
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(10)
            
    }
}

struct HomeListItem_Previews: PreviewProvider {
    
    static var previews: some View {
//        let pokeone = SimplePoke(url: "https://pokeapi.co/api/v2/pokemon/2/", name: "ivysaur")
        Home()
//        HomeListItem(Poke: pokeone)
//            .previewLayout(.sizeThatFits)
//            .previewDisplayName("Light Theme")
//            .environment(\.colorScheme, .light) // Tema claro
//        HomeListItem(Poke: pokeone)
//            .previewLayout(.sizeThatFits)
//            .previewDisplayName("Dark Theme")
//            .environment(\.colorScheme, .dark) // Tema escuro
    }
}
