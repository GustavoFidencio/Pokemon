//
//  HomeImage.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 17/08/23.
//

import SwiftUI

struct HomeImage: View {
    
    var poke : PokemonApi
    
    init(poke: PokemonApi) {
        self.poke = poke
    }
    
    var body: some View {
        Group{
            if let sprites = poke.sprites {
                if let image = URL(string: sprites.front_default!) {
                    AsyncImage(url: image){ image in
                        image
                            .resizable()
                            .scaledToFit()
                    } placeholder: {
                        VStack{
                            Load()
                        }
                        .frame(height: 145)
                    }
                }
            }
        }
    }
}
