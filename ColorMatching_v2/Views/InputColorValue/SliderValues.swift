//
//  SliderColor.swift
//  ColorMatching_v2
//
//  Created by Oleg Tsarenkoff on 1.08.21.
//

import SwiftUI

struct SliderValues: View {
    
    @Binding var valueSlider: Double
    let colorTrack: Color
    
    var body: some View {
            Slider(value: $valueSlider, in: 0...255, step: 1)
                .accentColor(colorTrack)
   }
}

struct SliderValues_Previews: PreviewProvider {
    static var previews: some View {
        SliderValues(valueSlider: .constant(127), colorTrack: .red)
    }
}
