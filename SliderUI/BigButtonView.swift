//
//  BigButtonView.swift
//  SliderUI
//
//  Created by Maxim on 21.10.2022.
//

import SwiftUI

struct BigButtonView: View {
    let title: String
    let action: () -> Void
    let startColor: Color
    let endColor: Color

    var body: some View {
        Button(action: action) {
            Text(title)
                .bold()
                .frame(width: 200, height: 50)
                .foregroundColor(.indigo)
                .background(LinearGradient(colors: [startColor, endColor], startPoint: .bottomLeading, endPoint: .topTrailing))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 4)
                .padding(.vertical, 5)
        }
    }
}

struct BigButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            BigButtonView(title: "Reset", action: {}, startColor: .mint, endColor: .white)
        }
    }
}
