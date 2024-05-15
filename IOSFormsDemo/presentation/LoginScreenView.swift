//
//  LoginScreenView.swift
//  IOSFormsDemo
//
//  Created by Alex Eluro on 15/05/2024.
//

import SwiftUI

enum FocusedField {
    case email
    case password
}

struct LoginScreenView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    @FocusState private var focusedField: FocusedField?
    
    private var canProceed: Bool {
        !username.isEmpty && !password.isEmpty
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack(alignment: .center) {
                    Image("game_pic")
                        .resizable()
                        .scaledToFill()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                    
                    Text("Game Room")
                        .font(.system(size: 35, weight: .bold, design: .serif))
                        .foregroundStyle(Color(.white))
                        .padding(.top, 20)
                }
                
                Text("Login To Begin Your Gaming Journey")
                    .font(.system(size: 35, weight: .bold, design: .serif))
                    .multilineTextAlignment(.leading)
                    .padding(.vertical)
            
                NormalTextField(placeHolder: "Username", value: $username)
                
                
                // Passwords in SwiftUI are written in SecureField
                PasswordTextField(placeHolder: "Password", value: $password)
                
                HStack {
                    Spacer()
                    Text("Forgot Password?")
                        .font(.system(size: 14, weight: .semibold))
                        .foregroundColor(.blue)
                        .padding(.trailing)
                }
                
                PrimaryButton(text: "Sign In", enable: canProceed) {
                    
                }
                
                TransparentButton(text: "Create New Account") {
                    
                }
                
                SignInOptionsView {
                    // take action here
                } xboxSignInAction: {
                    // take action here
                }
                
            }
        }
    }
}

struct SignInOptionsView: View {
   
    var playStationSignInAction: () -> Void
    var xboxSignInAction: () -> Void
    
    var body: some View {
        
        VStack {
            Text("Or continue with")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.blue)
                .padding(.bottom)
            
            HStack {
                Button {
                    // take action here
                } label: {
                    Image(systemName: "playstation.logo")
                        .foregroundColor(.white)
                }
                .iconButtonStyle
                
                Button {
                    //take action here
                } label: {
                    Image(systemName: "xbox.logo")
                        .foregroundColor(.white)
                }
                .iconButtonStyle
            }
        }
        
    }
}

extension View {
    
    var iconButtonStyle: some View {
        self.frame(width: 16, height: 16)
            .padding()
            .background(Color("lightGray"))
            .cornerRadius(5)
    }
    
}

#Preview {
    LoginScreenView()
}
