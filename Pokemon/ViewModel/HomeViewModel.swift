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
    
    private var nextPage: String? = ""
    private let base = URL(string: "https://pokeapi.co/api/v2/pokemon")!
    
    func getPokes(){
        Api.shared.fetch(base) { (result: Result<AllPokes, Error>) in
            switch result {
            case .success(let data):
                DispatchQueue.main.async {
                    self.nextPage = data.next
                    self.pokes = data.results!
                    self.isLoad = false
                }
            case .failure(let error):
                print("Error 157:", error)
                self.isLoad = false
            }
        }
    }
}
