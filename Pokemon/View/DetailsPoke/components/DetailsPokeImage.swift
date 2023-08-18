//
//  DetailsPokeImage.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 18/08/23.
//

import SwiftUI

struct DetailsPokeImage: View {
    
    var poke : Pokemon
    
    init(poke: Pokemon) {
        self.poke = poke
    }
    
    var body: some View {
        Group{
            if let url = poke.sprites?.versions.generationV?.blackWhite?.animated?.front_default {
                 GIF(url: url)
            } else if let source = poke.sprites?.front_default, let url = URL(string: source) {
                AsyncImage(url: url) { image in
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

struct DetailsPokeImage_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPokeImage(poke:
            Pokemon(
                id: 6,
                weight: 905,
                height: 17,
                name: "charizard",
                sprites:
                    Sprites(
                        back_shiny: "back_shiny_url",
                        front_shiny: "front_shiny_url",
                        back_female: "back_female_url",
                        back_default: "back_default_url",
                        front_female: "front_female_url",
                        front_default: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png",
                        versions: VersionsSprites(
                            generationV: GenerationV(
                                blackWhite: SpriteBlackWhite(
                                    animated: SpriteAnimated(
                                        back_shiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/shiny/6.gif",
                                        back_female: nil,
                                        front_shiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/shiny/6.gif",
                                        back_default: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/6.gif",
                                        front_female: nil,
                                        front_default: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/6.gif",
                                        back_shiny_female: nil,
                                        front_shiny_female: nil
                                    )
                                )
                            )
                        ),
                        back_shiny_female: "back_shiny_female_url",
                        front_shiny_female: "front_shiny_female_url"
                    ),
                is_default: true,
                base_experience: 267,
                location_area_encounters: "https://pokeapi.co/api/v2/pokemon/6/encounters"
            )
        )
    }
}
