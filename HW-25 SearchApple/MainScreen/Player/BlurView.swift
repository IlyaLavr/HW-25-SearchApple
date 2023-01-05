//
//  BlurView.swift
//  HW-25 SearchApple
//
//  Created by Илья on 25.12.2022.
//

import SwiftUI

struct BlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialLight))
        return view
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialLight))
    }
}

