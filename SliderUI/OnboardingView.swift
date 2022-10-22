//
//  OnboardingView.swift
//  SliderUI
//
//  Created by Maxim on 22.10.2022.
//

import SwiftUI
import RiveRuntime

struct OnboardingView: View {
    var body: some View {
        RiveViewModel(fileName: "animation-2").view()
            .ignoresSafeArea()
            .blur(radius: 25)
            .background(
                Image("Spline")
                    .blur(radius: 50)
            )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
