//
//  SuperheroResponse.swift
//  justicieLeague
//
//  Created by Tardes on 18/12/24.
//

import Foundation

struct SuperheroResponse: Codable {
    let response: String
    //let results_For: String
    let results: [SuperheroItem]
    
    /*enum CodingKeys: String, CodingKey {
        case results_For = "results-For"
    }*/
}

struct SuperheroItem: Codable {
    let id: String
    let name: String
    let image: SuperheroImage
}

struct SuperheroImage: Codable {
    let url: String
}
