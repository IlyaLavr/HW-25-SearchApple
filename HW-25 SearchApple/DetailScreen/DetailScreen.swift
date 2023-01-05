//
//  DetailScreen.swift
//  HW-25 SearchApple
//
//  Created by Илья on 24.12.2022.
//

import SwiftUI

struct DetailScreen: View {
    var body: some View {            ScrollView {
                BigSections()
//                Divider()
//                    .padding([.leading,.trailing])
                HStack {
                    SmallSections()
                }
            }
    }
}
struct RadioMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen()
    }
}

