//
//  FilmsBase.swift
//  FilmList
//
//  Created by Иван Маришин on 20.06.2021.
//

import Foundation

extension Film {
    static let filmList =
    [
        Film(ruName: "V значит Вендетта", enName: "V for Vendetta", genre: ["Action", "Drama"], releaseYear: 2005, iMDb: 8.1),
        Film(ruName: "Агенты АНКЛ", enName: "The Man from UNCLE", genre: ["Action", "Comedy", "Adventure"], releaseYear: 2015, iMDb: 7.3),
    ]
    
    static func getAction () -> () {
        
    }
}
