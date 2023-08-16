//
//  Pokemon.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 15/08/23.
//

import Foundation

struct Pokemon: Codable {
    let id: Int
    let weight: Int
    let name: String
    let sprites: Sprites?
    let location_area_encounters: String?
    let is_default: Bool
    let height: Int
    let base_experience: Int
}
