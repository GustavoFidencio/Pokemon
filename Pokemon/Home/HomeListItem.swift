//
//  HomeListItem.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 14/08/23.
//

import SwiftUI
import UIKit

struct HomeListItem: View {
    
    let imageURL = URL(string: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png")!
    
    var body: some View {
        VStack {
            AsyncImage(url: imageURL){ image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                // Placeholder enquanto a imagem está sendo carregada
                Color.gray
                    .frame(width: 100, height: 100) // Tamanho do placeholder
            }
            .frame(width: .infinity, height: .infinity)
            Text("Bulbassaur")
            Text("157")
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
        Group {
            Home()
                HomeListItem()
                    .previewLayout(.sizeThatFits)
                    .previewDisplayName("Light Theme")
                    .environment(\.colorScheme, .light) // Tema claro
                
                HomeListItem()
                    .previewLayout(.sizeThatFits)
                    .previewDisplayName("Dark Theme")
                    .environment(\.colorScheme, .dark) // Tema escuro
            }
    }
}
