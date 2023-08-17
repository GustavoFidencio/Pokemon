//
//  Captalize.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 17/08/23.
//

extension String {
    var capitalize: String {
        return prefix(1).capitalized + dropFirst()
    }
}
