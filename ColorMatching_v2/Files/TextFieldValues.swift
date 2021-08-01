//
//  TextFieldColor.swift
//  ColorMatching_v2
//
//  Created by Oleg Tsarenkoff on 1.08.21.
//

import SwiftUI

struct TextFieldValues: View {
    
    @Binding var value: Double
    
    @State private var showAlert = false
    @State private var defaultValue = 0.0
    
    var body: some View {
        
        TextField("",
                  text: textValue,
                  onCommit: {
                    value = defaultValue
                  })
            .frame(width: 50, alignment: .trailing)
            .multilineTextAlignment(.trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Wrong format!"),
                      message: Text("Please enter value from 0...255")
                )
            }
    }
    
    private var textValue: Binding<String> {
        Binding<String>(
            get: { "\(lround(value))" },
            set: {
                if let number = NumberFormatter().number(from: $0) {
                    let doubleValue = number.doubleValue
                    check(value: doubleValue)
                } else {
                    defaultValue = 0
                    showAlert.toggle()
                }
            }
        )
    }
    
    private func check(value: Double) {
        if !(0...255).contains(value) {
            defaultValue = 0
            showAlert.toggle()
            return
        }
        defaultValue = value
    }
}

struct TextFieldValues_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldValues(value: .constant(120.0))
    }
}
