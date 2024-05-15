//
//  PrimaryButton.swift
//  IOSFormsDemo
//
//  Created by Alex Eluro on 15/05/2024.
//

import Foundation
import SwiftUI



struct PrimaryButton: View {
    
    var text: String
    var enable: Bool
    var action: () -> Void
    
    var body: some View {
        Button {
            //do something
            action()
        } label: {
            Text(text)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(Color.white)
                .padding(.vertical)
        }
        .frame(maxWidth: .infinity)
        .background(Color.blue)
        .cornerRadius(12)
        .padding(.horizontal)
        .opacity(enable ? 1.0 : 0.5)
        .disabled(!enable)
    }
}
