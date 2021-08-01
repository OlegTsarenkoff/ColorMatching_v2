//
//  ColorView.swift
//  ColorMatching_v2
//
//  Created by Oleg Tsarenkoff on 1.08.21.
//

import SwiftUI

struct ColorPreview: View {
    
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(Color(red: red / 255,
                                   green: green / 255,
                                   blue: blue / 255))
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fit/*@END_MENU_TOKEN@*/)
            .shadow(color: Color(.systemGray), radius: 10, x: 8, y: 8)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(LinearGradient(gradient: Gradient(colors: [Color(.systemPink), Color(.systemTeal)]),
                                               startPoint: .topLeading,
                                               endPoint: .bottomTrailing),
                                lineWidth: 5))
            .padding()
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPreview(red: 0, green: 0, blue: 255)
    }
}
