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

    @State private var redTextField = ""
    @State private var greenTextField = ""
    @State private var blueTextField = ""

    var body: some View {

        ZStack {
            LinearGradient(colors: [.mint, .white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
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
                VStack {
                    СolorChangeView(
                        value: $redSliderValue,
                        color: .red,
                        textFieldValue: $redTextField)
                    СolorChangeView(
                        value: $greenSliderValue,
                        color: .green,
                        textFieldValue: $greenTextField)
                    СolorChangeView(
                        value: $blueSliderValue,
                        color: .blue,
                        textFieldValue: $blueTextField)
                }

                BigButtonView(title: "Reset") {
                    withAnimation {
                        redSliderValue = 0
                        greenSliderValue = 0
                        blueSliderValue = 0
                    }
                }
                Spacer()
                    .frame(height: 300)
                /*
                 Поместил слайдер в отдельное представление, но spacer всё еще не работает. Всё же как сократить расстояние между слайдерами?)
                 */
            }.padding()
        }
    }
}
struct СolorChangeView: View {
    @Binding var value: Double
    let color: Color
    @Binding var textFieldValue:String

    var body: some View {
        HStack {
            Text(lround(value).formatted()).font(.subheadline)
                .frame(width: 28)
            SliderView(value: $value, color: color)
                .onChange(of: value) { newValue in
                    textFieldValue = value.formatted()
                }

            TextField("",
                      text: $textFieldValue,
                      onEditingChanged:
                        { (editingChanged) in
                textFieldValue = value.formatted()
            })
            .textFieldStyle(.roundedBorder)
            .frame(width: 50)
            .shadow(radius: 4)

        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
