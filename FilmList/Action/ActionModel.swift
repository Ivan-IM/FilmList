//
//  ActionModel.swift
//  FilmList
//
//  Created by Иван Маришин on 18.06.2021.
//

import Foundation

struct Action {
    
    let ruName: String
    let enName: String
    let genre: String
    let releaseYear: Int
    let iMDb: Float
    
    var title: String {
        "\(ruName) (\(releaseYear))"
    }
    var subtitle: String {
        "IMDb: \(iMDb)"
    }
    
    static func getActionsList () -> [Action] {
        [
            Action(ruName: "Матрица", enName: "The Matrix", genre: "Action", releaseYear: 1999, iMDb: 8.7),
            Action(ruName: "V значит Вендетта", enName: "V for Vendetta", genre: "Action", releaseYear: 2005, iMDb: 8.1),
            Action(ruName: "Ип Ман", enName: "Ip Man", genre: "Action", releaseYear: 2008, iMDb: 8.0),
            Action(ruName: "Грань будущего", enName: "Edge of Tomorrow", genre: "Action", releaseYear: 2014, iMDb: 7.9),
            Action(ruName: "Смертельное оружие", enName: "Lethal Weapon", genre: "Action", releaseYear: 1987, iMDb: 7.6),
            Action(ruName: "Эквилибриум", enName: "Equilibrium", genre: "Action", releaseYear: 2002, iMDb: 7.4),
            Action(ruName: "Агенты АНКЛ", enName: "The Man from UNCLE", genre: "Action", releaseYear: 2015, iMDb: 7.3),
            Action(ruName: "Звездный десант", enName: "Starship Troopers", genre: "Action", releaseYear: 1997, iMDb: 7.2),
            
        ]
    }
}
