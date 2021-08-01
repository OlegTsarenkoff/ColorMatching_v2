//
//  Valudator.swift
//  ColorMatching_v2
//
//  Created by Oleg Tsarenkoff on 1.08.21.
//

final class Validator {
    static let shared = Validator()
    
    func validateColorValue(value: String) -> Bool {
        if let newValue = Int(value),
           (0...255).contains(newValue) {
            return true
        }
        return false
    }
    
    private init() {}
}
