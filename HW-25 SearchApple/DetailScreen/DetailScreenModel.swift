//
//  DetailScreenModel.swift
//  HW-25 SearchApple
//
//  Created by Илья on 24.12.2022.
//

import Foundation

struct DetailScreenModel {
    var name: String
    var title: String?
    var text: String?
    var image: String
}

extension DetailScreenModel {
    static let bigSectionModels: [DetailScreenModel] = [
        DetailScreenModel(name: "Легкий поп", title: "Избранная радиостанция", text: "Станция Apple Music", image: "3"),
        DetailScreenModel(name: "Хиты", title: "Избранная радиостанция", text: "Станция Apple Music", image: "1"),
        DetailScreenModel(name: "Хип-Хоп", title: "Избранная радиостанция", text: "Станция Apple Music", image: "2"),
        DetailScreenModel(name: "Поп-музыка", title: "Избранная радиостанция", text: "Станция Apple Music", image: "4"),
        DetailScreenModel(name: "Классика Рока", title: "Избранная радиостанция", text: "Станция Apple Music", image: "5"),
        DetailScreenModel(name: "Смус-джаз", title: "Избранная радиостанция", text: "Станция Apple Music", image: "6")
    ]
    
    static let smallSectionModels: [DetailScreenModel] = [
        DetailScreenModel(name: "One mix", title: "Поп", text: "Разные артисты", image: "7"),
        DetailScreenModel(name: "GAGA Radio", title: "Хард-рок", text: "Lady Gaga", image: "8"),
        DetailScreenModel(name: "Fatboy Slim Radio", text: "Fatboy Slim", image: "9"),
        DetailScreenModel(name: "Medicine At Midnight", text: "Run GO", image: "10"),
        DetailScreenModel(name: "OWSLA Radio", text: "Skrillex", image: "11"),
        DetailScreenModel(name: "RolingStones", text: "Now", image: "12"),
        DetailScreenModel(name: "Nirvana", text: "Happy End", image: "13"),
        DetailScreenModel(name: "Abba", text: "Classik", image: "14"),
        DetailScreenModel(name: "Cropp", text: "Wayne", image: "15")
    ]
    
    static let recentSectionModels: [DetailScreenModel] = [
        DetailScreenModel(name: "Beatles", text: "Разные артисты", image: "17"),
        DetailScreenModel(name: "Miley Cirus", text: "Meat", image: "16"),
        DetailScreenModel(name: "Dawid Bowie", text: "Slim", image: "18"),
        DetailScreenModel(name: "Christmas", text: "Run", image: "19")
    ]
    
    static let poularStantionsSectionModels: [DetailScreenModel] = [
        DetailScreenModel(name: "1980-е", text: "Популярное", image: "1980"),
        DetailScreenModel(name: "1990-е", text: "Популярное", image: "1990"),
        DetailScreenModel(name: "2000-е", text: "Популярное", image: "2000"),
        DetailScreenModel(name: "2010-е", text: "Популярное", image: "2010"),
        DetailScreenModel(name: "2022", text: "Популярное", image: "2022")
    ]
}
