//
//  SplashScreen.swift
//  IOSFormsDemo
//
//  Created by Alex Eluro on 15/05/2024.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.green, .green], startPoint: .top, endPoint: .bottomLeading)
                VStack {
                    Image(systemName: "gamecontroller.fill")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .foregroundColor(.white)
                }
                .background(.green)
            }
        }
        .navigationDestination(for: Int.self, destination: { value in
            LoginScreenView()
        })
    }
}

#Preview {
    SplashScreen()
}
