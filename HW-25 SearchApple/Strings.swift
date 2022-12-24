//
//  Strings.swift
//  HW-25 SearchApple
//
//  Created by Илья on 24.12.2022.
//

import Foundation

enum Strings {
    enum Tabbar {
        static let tabBarItemLeft = "square.stack.fill"
        static let tabBarItemMiddle = "dot.radiowaves.left.and.right"
        static let tabBarItemRigth = "magnifyingglass"
        
        static let tabBarLeftName = "Медиатека"
        static let tabBarMiddleName = "Радио"
        static let tabBarRigthName = "Поиск"
    }
    
    enum MusicPlayer{
        static let currentImageTrack = "play.square.fill"
        static let currentNameTrack = "Не исполняется"
        static let playButton = "play.fill"
        static let nextTrackButton = "forward.fill"
    }
    
//    enum ListCell {
//        static let image = "circle"
//        static let selectedImage = "checkmark.circle.fill"
//    }
    
    enum DetailSmallSections {
        static let firstSectionText = "Шоу артистов"
        static let secondSectionText = "Вы недавно слушали"
        static let thirdSectionText = "Популярные артисты"
    }
    
    enum NavigationTitles {
        static let radioScreenTitles = "Radio"
        static let searchScreenTitles = "Поиск"
//        static let mediatekaScreenTitles = "Медиатека"
    }
}
