//
//  ColorView.swift
//  SliderUI
//
//  Created by Maxim on 25.10.2022.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double

    var body: some View {
        Rectangle()
            .foregroundColor(
                Color(
                    red: red/255,
                    green: green/255,
                    blue: blue/255,
                    opacity: 1))
            .frame(height: 140)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 114, green: 33, blue: 42)
    }
}
