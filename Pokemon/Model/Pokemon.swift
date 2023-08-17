//
//  Pokemon.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 15/08/23.
//

import Foundation

struct PokemonApi: Codable {
    var id: Int = 0
    var weight: Int = 0
    var height: Int = 0
    var name: String = ""
    var is_default: Bool = false
    var sprites: Sprites? = nil
    var base_experience: Int = 0
    var location_area_encounters: String? = ""
}

struct Pokemon  {
    let id: Int?
    let url: String
    let height: Int?
    let weight: Int?
    let name: String
    let sprites: Sprites?
    let is_default: Bool?
    let base_experience: Int?
    let location_area_encounters: String?
    
    init(url: String, name: String){
        self.id = nil
        self.url = url
        self.name = name
        self.weight = nil
        self.height = nil
        self.sprites = nil
        self.is_default = nil
        self.base_experience = nil
        self.location_area_encounters = nil
    }
}
