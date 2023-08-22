//
//  HomeViewModel.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 15/08/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
        
    @Published var pokes: [SimplePoke] = []
    @Published var isLoad: Bool = true
    
    private var nextPage: URL?
    private let base = URL(string: "https://pokeapi.co/api/v2/pokemon")!
    
    func getPokes(next: Bool = false){
        Api.shared.fetch(next ? nextPage! : base) { (result: Result<AllPokes, Error>) in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    self.nextPage = URL(string: data.next!)
                    var newPokes = data.results!.map { poke in
                        var mutablePoke = poke
                        mutablePoke.id = UUID()
                        return mutablePoke
                    }
                    
                    if(next){
                        self.pokes.append(contentsOf: newPokes)
                    }else {
                        self.pokes = newPokes
                    }
                    self.isLoad = false
                }
            case .failure(let error):
                print("Error 157:", error)
                self.isLoad = false
            }
        }
    }
}
