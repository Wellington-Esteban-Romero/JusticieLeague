//
//  SuperheroProvider.swift
//  justicieLeague
//
//  Created by Tardes on 7/1/25.
//

import Foundation

class SuperheroProvider {
    
    private static var endPoint = "https://superheroapi.com/api/9afdf0a4d31b4337bfe784d5d63722bc/"
    
    static func findSuperheroesBy (name: String) async throws -> [SuperheroItem] {
            let url = URL(string: "\(endPoint)search/\(name)")!
        let (data, _) =  try await URLSession.shared.data(from: url)
        let decoded = try JSONDecoder().decode(SuperheroResponse.self, from: data)
        return decoded.results
    }
    
    static func findSuperheroesBy (id: String) async throws -> SuperheroItem {
            let url = URL(string: "\(endPoint)\(id)")!
        let (data, _) =  try await URLSession.shared.data(from: url)
        let result = try JSONDecoder().decode(SuperheroItem.self, from: data)
        return result
    }
    
}
