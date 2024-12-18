//
//  SuperheroResponse.swift
//  justicieLeague
//
//  Created by Tardes on 18/12/24.
//

import Foundation

struct SuperheroResponse {
    let response: String
    let results_For: String
    let results: [SuperheroItem]
    
    enum CodingKeys: String, CodingKey {
        case results_For = "results-For"
    }
}

struct SuperheroItem {
    let id: String
    let name: String
    let image: SuperheroImage
}

struct SuperheroImage {
    let url: String
}
