//
//  Pokemon.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 15/08/23.
//

import Foundation

struct TypeP: Codable {
    let url : String
    let name : String
}

struct Types: Codable {
    let slot: Int
    let type: TypeP
}

struct Pokemon: Codable {
    var id: Int = 0
    var weight: Int = 0
    var height: Int = 0
    var name: String = ""
    var types : [Types] = []
    var sprites: Sprites? = nil
    var is_default: Bool = false
    var base_experience: Int = 0
    var location_area_encounters: String? = ""
}
