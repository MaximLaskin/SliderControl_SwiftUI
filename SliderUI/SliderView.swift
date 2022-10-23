//
//  SliderView.swift
//  SliderUI
//
//  Created by Maxim on 23.10.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    let color: Color

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.black, color]),
                startPoint: .leading,
                endPoint: .trailing
            )
            .mask(Slider(value: $value, in: 0...255, step: 1))

            Slider(value: $value, in: 0...255, step: 1)
                .opacity(0.05)
        }
    }
}


