//
//  ComedyModel.swift
//  FilmList
//
//  Created by Иван Маришин on 18.06.2021.
//

struct Comedy {
    let title: String
    let subTitle: String
    
    static func getComedies () -> [Comedy] {
    
        let comedies: [Comedy] = [
            Comedy(title: "Криминальное чтиво", subTitle: "Pulp fiction, 1994"),
            Comedy(title: "1+1", subTitle: "Intouchables, 2011"),
            Comedy(title: "Операция Ы и другие приключения Шурика", subTitle: "1965"),
            Comedy(title: "Один дома", subTitle: "Home alone, 1990"),
            Comedy(title: "Невероятная история Уолтера Митти", subTitle: "Secret life of Walter Mitty, 2013"),
            Comedy(title: "Стажер", subTitle: "Intern, 2015"),
            Comedy(title: "Мальчишник в Вегасе", subTitle: "Hangover, 2009")
        ]
        
        return comedies
    }
    
}

