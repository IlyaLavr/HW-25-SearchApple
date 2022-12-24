//
//  ContentView.swift
//  HW-25 SearchApple
//
//  Created by Илья on 24.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SearchMainScreen()
                .tabItem {
                    Image(systemName: Strings.Tabbar.tabBarItemLeft)
                    Text(Strings.Tabbar.tabBarLeftName)
                }
            SearchMainScreen()
            .tabItem {
                Image(systemName: Strings.Tabbar.tabBarItemMiddle)
                Text(Strings.Tabbar.tabBarMiddleName)
            }
            SearchMainScreen()
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
