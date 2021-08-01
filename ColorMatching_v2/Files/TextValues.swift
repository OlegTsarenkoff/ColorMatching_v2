//
//  TextColor.swift
//  ColorMatching_v2
//
//  Created by Oleg Tsarenkoff on 1.08.21.
//

import SwiftUI

struct TextValues: View {
    
    var textValue: Double
    
    var body: some View {
        Text("\(lround(textValue))")
            .frame(width: 35, alignment: .leading)
    }
}

struct TextColor_Previews: PreviewProvider {
    static var previews: some View {
        TextValues(textValue: 15)
    }
}
