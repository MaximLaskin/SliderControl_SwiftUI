//
//  ContentView.swift
//  SliderUI
//
//  Created by Maxim on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
    //    @State private var colorView: Color

    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)


    var body: some View {

        ZStack {
            LinearGradient(colors: [.mint, .white ], startPoint: .top, endPoint: .bottom)
            VStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(height: 140)
                    .cornerRadius(10)
                    .shadow(radius: 5)


                ColorSliderView(value: $redSliderValue)
                ColorSliderView(value: $greenSliderValue)
                ColorSliderView(value: $blueSliderValue)
                BigButtonView(title: "Reset") {
                    print("Button pressed")
                }
                Spacer()

            }
            .padding()
        }.ignoresSafeArea()
    }

}
struct ColorSliderView: View {
    @Binding var value: Double

    var body: some View {
        HStack {
            Text("1").font(.subheadline)
            Slider(value: $value, in: 0...255, step: 1) //диапазон и шаг
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
