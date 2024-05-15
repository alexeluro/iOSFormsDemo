//
//  TransparentButton.swift
//  IOSFormsDemo
//
//  Created by Alex Eluro on 15/05/2024.
//

import Foundation
import SwiftUI


struct TransparentButton: View {
    var text: String
    var enable: Bool = true
    var action: () -> Void
    
    var body: some View {
        Button {
            //do something
            action()
        } label: {
            Text(text)
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(Color("gray"))
                .padding(.vertical)
        }
        .frame(maxWidth: .infinity)
        .cornerRadius(12)
        .padding(.horizontal)
    }
    
}

