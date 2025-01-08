//
//  SuperheroResponse.swift
//  justicieLeague
//
//  Created by Tardes on 18/12/24.
//

import Foundation

struct SuperheroResponse: Codable {
    let response: String
    let results: [SuperheroItem]
    

}

struct SuperheroItem: Codable {
    let id: String
    let name: String
    let image: SuperheroImage
}

struct Biography: Codable {
    let fullName: String
    //let alterEgos: String
    let publisher: String
    let alignment: String
    let placeOfBirth: String
    
    private enum CodingKeys: String, CodingKey {
        case publisher, alignment
        case fullName = "full-name"
        //case alterEgos = "alter-egos"
        case placeOfBirth = "place-of-birth"
    }
}

struct SuperheroImage: Codable {
    let url: String
}
