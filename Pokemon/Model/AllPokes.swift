//
//  AllPokes.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 15/08/23.
//

import Foundation

struct SimplePoke: Identifiable, Codable {
    var id: UUID?
    let url: String
    let name: String
    
    init(id: UUID = UUID(), url: String, name: String) {
        self.id = id
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
