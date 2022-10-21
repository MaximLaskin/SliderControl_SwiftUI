//
//  ContentView.swift
//  SliderUI
//
//  Created by Maxim on 21.10.2022.
//

import SwiftUI

struct ContentView: View {

    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)

    var body: some View {

        ZStack {
            LinearGradient(colors: [.mint, .white ], startPoint: .top, endPoint: .bottom)
            VStack {
                Rectangle()
                    .foregroundColor(
                        Color(
                        red: redSliderValue/255,
                        green: greenSliderValue/255,
                        blue: blueSliderValue/255,
                        opacity: 1))
                    .frame(height: 140)
                    .cornerRadius(10)
                    .shadow(radius: 5)

                ColorSliderView(value: $redSliderValue, color: .red)
                ColorSliderView(value: $greenSliderValue, color: .green)
                ColorSliderView(value: $blueSliderValue, color: .blue)

                BigButtonView(title: "Reset") {
                    redSliderValue = 0
                    greenSliderValue = 0
                    blueSliderValue = 0
                }
                Spacer()
            }
            .padding()
        }.ignoresSafeArea()
    }
}
struct ColorSliderView: View {
    @Binding var value: Double
    let color: Color

    var body: some View {
        HStack {
            Text("1").font(.subheadline)
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
            ZStack {
                Color(.green)
                    .frame(width: 45, height: 30)
                    .cornerRadius(5)
                    .shadow(radius: 4)
                Text(lround(value).formatted()).font(.subheadline)
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
