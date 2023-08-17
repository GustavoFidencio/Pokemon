//
//  GetColorByType.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 17/08/23.
//

import Foundation

struct ColorsTypes{
    static func getColor(type:TypesPoke) -> String{
        switch type {
        case .bug:
            return "#A8B820"  // Verde
        case .dark:
            return "#705848"  // Preto
        case .fire:
            return "#FF4422"  // Vermelho
        case .ice:
            return "#98D8D8"  // Azul Claro
        case .rock:
            return "#B8A038"  // Marrom
        case .fairy:
            return "#EE99AC"  // Rosa
        case .ghost:
            return "#705898"  // Roxo Escuro
        case .grass:
            return "#78C850"  // Verde
        case .steel:
            return "#B8B8D0"  // Prata
        case .water:
            return "#6890F0"  // Azul
        case .flying:
            return "#A890F0"  // Azul Claro
        case .ground:
            return "#E0C068"  // Marrom
        case .normal:
            return "#A8A878"  // Bege
        case .poison:
            return "#A040A0"  // Roxo
        case .dragon:
            return "#7038F8"  // Roxo
        case .psychic:
            return "#F85888"  // Rosa
        case .electric:
            return "#F8D030"  // Amarelo
        case .fighting:
            return "#C03028"  // Vermelho
        }
    }
}
