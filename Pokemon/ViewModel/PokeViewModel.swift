//
//  HomeViewModel.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 15/08/23.
//

import SwiftUI

class PokeViewModel: ObservableObject {
    
    var url: String
    
    init(url: String) {
        self.url = url
        getPoke()
    }
            
    @Published var isLoad: Bool = true
    @Published var poke: PokemonApi = PokemonApi()
    
    private func getPoke(){
        let base = URL(string: self.url)!
        
        Api.shared.fetch(base) { (result: Result<PokemonApi, Error>) in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    self.poke = data
                    self.isLoad.toggle()
                    print(self.isLoad)
                }
            case .failure(let error):
                print("Error 157:", error)
                self.isLoad.toggle()
                print("ERRRR")
            }
        }
        
    }
    
}
