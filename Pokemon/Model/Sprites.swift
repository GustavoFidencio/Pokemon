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

struct SpriteBlackWhite: Codable{
    let animated: SpriteAnimated?
}

struct GenerationV: Codable{
    let blackWhite: SpriteBlackWhite?
    
    enum CodingKeys: String, CodingKey {
        case blackWhite = "black-white"
    }
}

struct VersionsSprites: Codable{
    let generationV: GenerationV?
    
    enum CodingKeys: String, CodingKey {
        case generationV = "generation-v"
    }
}

struct Sprites: Codable{
    let back_shiny: String?
    let front_shiny: String?
    let back_female: String?
    let back_default: String?
    let front_female: String?
    let front_default: String?
    let versions: VersionsSprites
    let back_shiny_female: String?
    let front_shiny_female: String?
}
