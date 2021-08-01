//
//  InputColorValue.swift
//  ColorMatching_v2
//
//  Created by Oleg Tsarenkoff on 1.08.21.
//

import SwiftUI

struct InputColorValue: View {
    
    @Binding var value: Double
    let colorTrack: Color
    
    var body: some View {
        
        HStack {
            TextValues(textValue: value)
            SliderValues(valueSlider: $value, colorTrack: colorTrack)
            TextFieldValues(value: $value)
        }.padding(.horizontal, 10)
        
        .background(Color(.systemBackground)).cornerRadius(15)
        .overlay(RoundedRectangle(cornerRadius: 15)
                    .stroke(LinearGradient(gradient: Gradient(colors: [colorTrack, Color(.white).opacity(0.5)]),
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing),
                            lineWidth: 2))
        .shadow(color: Color(.systemGray), radius: 10, x: 8, y: 8)
    }
}

struct InputColorValue_Previews: PreviewProvider {
    static var previews: some View {
        InputColorValue(value: .constant(127), colorTrack: .red)
    }
}
