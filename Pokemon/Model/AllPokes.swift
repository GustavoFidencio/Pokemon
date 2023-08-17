//
//  AllPokes.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 15/08/23.
//

import Foundation

struct SimplePoke: Codable {
    let url: String
    let name: String
    
    init(url: String, name: String) {
        self.url = url
        self.name = name
    }
}

struct AllPokes: Codable {
    let count: Int
    let next: String?
    let previous: String?
    let results: [SimplePoke]?
}
