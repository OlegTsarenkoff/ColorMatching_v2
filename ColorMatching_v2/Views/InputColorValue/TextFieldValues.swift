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

    var body: some View {
        TextField("",
                  text: Binding(get: {
                    "\(lround(self.value))"
                  },
                  set: { newValue in
                    guard !newValue.isEmpty else { return }
                    
                    if Validator.shared.validateColorValue(value: newValue) {
                        self.value = Double(newValue)!
                    } else {
                        self.value = 0
                        self.showAlert = true
                    }
                  }),
                  onCommit: {
                    UIApplication.shared.endEditing()
                  })
            
            .frame(width: 50, alignment: .trailing)
            .multilineTextAlignment(.trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .keyboardType(.numberPad)
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Ошибка!"),
                      message: Text("Введите значение в диапазоне от 0 до 255")
                )
            }
    }
}

struct TextFieldValues_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldValues(value: .constant(120.0))
    }
}
