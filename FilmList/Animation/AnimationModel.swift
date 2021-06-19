//
//  AnimationModel.swift
//  FilmList
//
//  Created by Иван Маришин on 18.06.2021.
//

struct Animation {
    let title: String
    let description: String
    let image: String
}

extension Animation {
    static func getAnimation() -> [Animation] {
        [Animation(title: "Корпорация монстров", description: "США, 28 октября 2001", image: "Monsters Inc"),
         Animation(title: "Тачки", description: "США, 14 марта 2006", image: "Cars"),
         Animation(title: "ВАЛЛИ", description: "США, 21 июня 2008", image: "walle"),
         Animation(title: "В поисках Немо", description: "США, 18 мая 2003", image: "Finding Nemo"),
         Animation(title: "Ледниковый период", description: "США, 12 марта 2002", image: "Ice Age")
        ]
    }
}
