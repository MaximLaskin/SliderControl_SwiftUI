//
//  ColorValueTFView.swift
//  SliderUI
//
//  Created by Maxim on 25.10.2022.
//

import SwiftUI

struct ColorValueTFView: View {
    @Binding var textValue: String
    @Binding var value: Double

    @State private var showAlert = false

    var body: some View {
        TextField("", text: $textValue) { _ in
            withAnimation {

            }
        }
    }
}

//extension ColorValueTFView {
//    
//}
//struct ColorValueTFView_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorValueTFView()
//    }
//}
