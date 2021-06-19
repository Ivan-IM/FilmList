//
//  HorrorModel.swift
//  FilmList
//
//  Created by Иван Маришин on 18.06.2021.
//

struct Horror {
    var name: String
    var author: String
    var year: String
    var image: String {
        ("\(name)_\(author)")
    }
}

extension Horror {
    static func getHorror () -> [Horror] {
        [
            Horror(name: "Spiral: From the Book of Saw", author: "Darren Lynn Bousman", year: "2021"),
            Horror(name: "Army of the Dead", author: "Zack Snyder", year: "2021"),
            Horror(name: "The Conjuring: The Devil Made Me Do It", author: "Michael Chaves", year: "2021"),
            Horror(name: "A Quiet Place", author: "John Krasinski", year: "2021"),
            Horror(name: "Constantine", author: "Francis Lawrence", year: "2005"),
            Horror(name: "The Strangler of Blackmoor Castle", author: "Harald Reinl", year: "1963"),
            Horror(name: "Our Evil", author: "Samuel Galli", year: "2017"),
            Horror(name: "The Djinn", author: "Justin Powell", year: "2021"),
            Horror(name: "The Unholy", author: "Evan Spiliotopoulos", year: "2021"),
            Horror(name: "Humanoids from the Deep", author: "Barbara Peeters", year: "1980"),
            Horror(name: "Tooth Fairy: The Last Extraction", author: "Louisa Warren", year: "2021"),
            Horror(name: "Camp Cold Brook", author: "Andy Palmer", year: "2018"),
            Horror(name: "In the Earth", author: "Ben Wheatley", year: "2021"),
            Horror(name: "An Evil Tale", author: "Sam Siragusa", year: "2018"),
            Horror(name: "Body Melt", author: "Philip Brophy", year: "1993")
        ]
    }
}

