//
//  WavesView.swift
//  ADHD Focus
//
//  Created by Fereshte Ehsani on 28/02/25.
//

import SwiftUI
import Lottie

struct WavesView: View {
    var body: some View {
        LottieView(animation: .named("waves"))
            .looping()
    }
}

#Preview {
    WavesView()
}
