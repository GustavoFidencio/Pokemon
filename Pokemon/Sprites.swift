//
//  Sprites.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 15/08/23.
//

import Foundation

struct SpriteAnimated: Codable{
    let back_shiny: String?
    let back_female: String?
    let front_shiny: String?
    let back_default: String?
    let front_female: String?
    let front_default: String?
    let back_shiny_female: String?
    let front_shiny_female: String?
    
}

struct SpriteBlacWhite: Codable{
    let animated: SpriteAnimated?
}

struct GenerationV: Codable{
    let blackWhite: SpriteBlacWhite?
}

struct VersionsSprites: Codable{
    let generationV: GenerationV?
}

struct Sprites: Codable{
    
    let back_shiny: String?
    let front_shiny: String?
    let back_female: String?
    let back_default: String?
    let front_female: String?
    let front_default: String?
    let back_shiny_female: String?
    let front_shiny_female: String?
    
    let versions: VersionsSprites
    
}
