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
    
    var body: some View {
        VStack {
            if viewModel.isLoad {
               Load()
            } else {
                HomeImage(poke: viewModel.poke)
                Text(Poke.name.capitalize)
                    .font(.headline)
            }
        }
        .padding(20)
        .edgesIgnoringSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.secondarySystemBackground))
        .cornerRadius(10)
    }
}

struct HomeListItem_Previews: PreviewProvider {
    static var previews: some View {
        let pokeone = SimplePoke(url: "https://pokeapi.co/api/v2/pokemon/2/", name: "ivysaur")
        Home()
            .previewDisplayName("Light Theme")
            .environment(\.colorScheme, .light) // Tema claro
        Home()
            .previewDisplayName("Dark Theme")
            .environment(\.colorScheme, .dark) // Tema escuro
        HomeListItem(Poke: pokeone)
            .previewLayout(.sizeThatFits)
    }
}
