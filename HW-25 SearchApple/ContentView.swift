//
//  ContentView.swift
//  HW-25 SearchApple
//
//  Created by Илья on 24.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var expand = false
    @Namespace var animation
    
    var body: some View {
        TabView {
            ZStack(alignment: .bottom) {
                SearchMainScreen()
                MusicPlayerView(animation: animation, expand: $expand)
            }
                .tabItem {
                    Image(systemName: Strings.Tabbar.tabBarItemLeft)
                    Text(Strings.Tabbar.tabBarLeftName)
                }
            ZStack(alignment: .bottom) {
                SearchMainScreen()
                MusicPlayerView(animation: animation, expand: $expand)
            }
            .tabItem {
                Image(systemName: Strings.Tabbar.tabBarItemMiddle)
                Text(Strings.Tabbar.tabBarMiddleName)
            }
            ZStack(alignment: .bottom) {
                SearchMainScreen()
                MusicPlayerView(animation: animation, expand: $expand)
            }
                .tabItem {
                    Image(systemName: Strings.Tabbar.tabBarItemRigth)
                    Text(Strings.Tabbar.tabBarRigthName)
                }
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
