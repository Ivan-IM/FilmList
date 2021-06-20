//
//  FilmModel.swift
//  FilmList
//
//  Created by Иван Маришин on 20.06.2021.
//

import Foundation

struct Film {
    let ruName: String
    let enName: String
    let genre: Set<String>
    let releaseYear: Int
    let iMDb: Float
    
    var title: String {
        "\(ruName) (\(releaseYear))"
    }
    var subtitle: String {
        "IMDb: \(iMDb)"
    }
}
