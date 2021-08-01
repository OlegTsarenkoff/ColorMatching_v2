//
//  ContentView.swift
//  ColorMatching_v2
//
//  Created by Oleg Tsarenkoff on 1.08.21.
//

import SwiftUI

struct ContentView: View {

    @State private var valueRed: Double = Double.random(in: 0...255)
    @State private var valueGreen: Double = Double.random(in: 0...255)
    @State private var valueBlue: Double = Double.random(in: 0...255)
    
    
    var body: some View {
        ZStack {
            Color(red: valueRed / 255,
                  green: valueGreen / 255,
                  blue: valueBlue / 255,
                  opacity: 0.3)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 70) {
                OutputColor(red: valueRed,
                            green: valueGreen,
                            blue: valueBlue
                )
                
                VStack(spacing: 24.0) {
                    InputColorValue(value: $valueRed,
                                    colorTrack: .red)
                    InputColorValue(value: $valueGreen,
                                    colorTrack: .green)
                    InputColorValue(value: $valueBlue,
                                    colorTrack: .blue)
                }

            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
