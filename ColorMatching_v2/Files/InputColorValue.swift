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
        }
    }
}
