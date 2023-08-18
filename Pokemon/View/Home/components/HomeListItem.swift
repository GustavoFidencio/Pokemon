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
    @State private var backgroundColor : String = "#000000"
 
    init(Poke: SimplePoke) {
        self.Poke = Poke
        self.viewModel = PokeViewModel(url: self.Poke.url)
    }
    
    private func getColor(_ name: String) {
        let type = TypesPoke(rawValue: name.lowercased())
        self.backgroundColor = ColorsTypes.getColor(type: type!)
   }
    
    var body: some View {
        NavigationLink(destination: DetailsPoke(poke: viewModel.poke)) {
            ZStack {
                Color(UIColor.secondarySystemBackground).edgesIgnoringSafeArea(.all)
                Color(hex: backgroundColor).opacity(0.25).edgesIgnoringSafeArea(.all)
                VStack {
                    if viewModel.isLoad {
                        Load()
                    } else {
                        HomeImage(poke: viewModel.poke)
//                        DetailsPokeImage(poke: viewModel.poke)
//                            .frame(width: 40, height: 100)
                        Text(Poke.name.capitalize)
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                }
                .padding(20)
                .edgesIgnoringSafeArea(.all)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .cornerRadius(10)
        }
        .onChange(of: viewModel.isLoad) { newVal in
            if !newVal {
                getColor(viewModel.poke.types[0].type.name)
            }
        }
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
