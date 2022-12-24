//
//  SearchModel.swift
//  HW-25 SearchApple
//
//  Created by Илья on 24.12.2022.
//

import Foundation

struct SearchScreenModel {
    var name: String
    var image: String
}

extension SearchScreenModel {
    static let searchModels: [SearchScreenModel] = [
        SearchScreenModel(name: "Поп на русском", image: "1"),
        SearchScreenModel(name: "Новый год", image: "2"),
        SearchScreenModel(name: "Главное", image: "3"),
        SearchScreenModel(name: "Спокойствие", image: "4"),
        SearchScreenModel(name: "Для детей", image: "5"),
        SearchScreenModel(name: "Спорт", image: "6"),
        SearchScreenModel(name: "Чарты", image: "7"),
        SearchScreenModel(name: "Сон", image: "8"),
        SearchScreenModel(name: "Хиты", image: "9"),
        SearchScreenModel(name: "2010-е", image: "10")
    ]
}
