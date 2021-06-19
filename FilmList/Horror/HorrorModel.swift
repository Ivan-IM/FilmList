//
//  HorrorModel.swift
//  FilmList
//
//  Created by Иван Маришин on 18.06.2021.
//

struct Horror {
    var name: String
    var author: String
    var image: String {
        ("\(name)_\(author)")
    }
}

extension Horror {
    static func getHorror () -> [Horror] {
        [
        Horror(name: "Spiral: From the Book of Saw", author: "Darren Lynn Bousman"),
        Horror(name: "Army of the Dead", author: "Zack Snyder"),
        Horror(name: "The Conjuring: The Devil Made Me Do It", author: "Michael Chaves"),
        Horror(name: "A Quiet Place", author: "John Krasinski"),
        Horror(name: "Constantine", author: "Francis Lawrence"),
        Horror(name: "The Strangler of Blackmoor Castle", author: "Harald Reinl"),
        Horror(name: "Our Evil", author: "Samuel Galli"),
        Horror(name: "The Djinn", author: "Justin Powell"),
        Horror(name: "The Unholy", author: "Evan Spiliotopoulos"),
        Horror(name: "Humanoids from the Deep", author: "Barbara Peeters"),
        Horror(name: "Tooth Fairy: The Last Extraction", author: "Louisa Warren"),
        Horror(name: "Camp Cold Brook", author: "Andy Palmer"),
        Horror(name: "In the Earth", author: "Ben Wheatley"),
        Horror(name: "An Evil Tale", author: "Sam Siragusa"),
        Horror(name: "Body Melt", author: "Philip Brophy")
        ]
    }
}

