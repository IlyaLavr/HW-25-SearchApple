//
//  SearchMainScreen.swift
//  HW-25 SearchApple
//
//  Created by Илья on 24.12.2022.
//

import SwiftUI

struct SearchMainScreen: View {
    
    var body: some View {
        NavigationView{
            ZStack(alignment: .bottom) {
                SearchScreen()
                MusicPlayerView()
            }
        }
    }
}

struct SearchMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        SearchMainScreen()
    }
}
