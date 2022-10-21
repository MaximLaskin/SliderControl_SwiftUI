//
//  SliderView.swift
//  SliderUI
//
//  Created by Maxim on 21.10.2022.
//

import SwiftUI

struct SliderView: View {

    @State private var sliderValue = 0.5
    
    var body: some View {
        Slider(value: $sliderValue)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView()
    }
}
