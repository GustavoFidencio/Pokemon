//
//  Api.swift
//  Pokemon
//
//  Created by Gustavo Fidencio on 15/08/23.
//

import Foundation

class Api {
    static let shared = Api()
    
    private init() {} // Privatize o init para evitar instanciação direta
    
    func fetch<T: Codable>(_ url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NSError(domain: "NoData", code: -1, userInfo: nil)))
                return
            }
            
            do {
                let decodedObject = try JSONDecoder().decode(T.self, from: data)
                completion(.success(decodedObject))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
