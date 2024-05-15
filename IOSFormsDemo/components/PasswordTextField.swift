//
//  PasswordTextField.swift
//  IOSFormsDemo
//
//  Created by Alex Eluro on 15/05/2024.
//

import Foundation
import SwiftUI


struct PasswordTextField: View {
    
    var placeHolder: String
    @Binding var value: String
    @FocusState var isFocused: Bool
    var error: String? = nil
    
    var body: some View {
        VStack(alignment: .leading) {
            SecureField(text: $value, label: {
                Text(placeHolder)
            })
            .focused($isFocused, equals: true)
            .textFieldStyle(.automatic)
            .padding()
            .background(Color("fadedBlue"))
            .cornerRadius(12)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(isFocused ? Color.green : Color.white, lineWidth: 3)
            )
            .onChange(of: value) { oldValue, newValue in
                
            }
            
            if error != nil {
                Text(error!)
                    .font(.system(size: 14, weight: .regular))
                    .foregroundColor(.red)
            } else {
                
            }
        }
        
        .padding(.horizontal)
    }
}
