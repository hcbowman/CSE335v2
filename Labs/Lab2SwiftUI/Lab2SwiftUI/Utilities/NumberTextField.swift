//
//  NumberTextField.swift
//  NumberTextField
//
//  Created by Hunter Bowman on 9/12/21.
//

import Foundation
import SwiftUI

struct NumberTextField: UIViewRepresentable {
    @Binding var floatValue: Float
    
    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: NumberTextField
        
        init(_ parent: NumberTextField) {
            self.parent = parent
        }
        
        func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
            
        }
        
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            
            var allowedCharacters = CharacterSet.decimalDigits // TODO: get rid of "var"
            allowedCharacters.insert(".")
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        }
        
        
        
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    func makeUIView(context: Context) -> UITextField {
        let textField = UITextField()
        textField.keyboardType = .decimalPad
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.clearButtonMode = .always
        textField.returnKeyType = .go
        
        textField.delegate = context.coordinator
        return textField
        
    }
    
    func updateUIView(_ uiView: UITextField, context: Context) {
        
    }
}


