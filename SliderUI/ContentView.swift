//
//  ContentView.swift
//  SliderUI
//
//  Created by Maxim on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
    //    @State private var colorView: Color

    @State private var sliderValue = Double.random(in: 0...1)


    var body: some View {

        VStack {
            Rectangle()
                .foregroundColor(.blue)
                .frame(height: 140)
                .cornerRadius(10)
                .shadow(radius: 5)

            HStack {
                Text("1")
                Slider(value: $sliderValue)
                Color(.green)
                    .frame(width: 45, height: 30)
                    .cornerRadius(5)
                    .shadow(radius: 4)
            }
            BigButtonView(title: "Reset") {
                print("Button pressed")
            }
            Spacer()

        }
        .padding()
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
