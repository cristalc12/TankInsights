//
//  LoginView.swift
//  TankInsights
//
//  Created by cristal cervantes on 6/19/24.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    

    var body: some View {
        NavigationStack {
            VStack {
                //image
                Image("fish")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.vertical, 5)
                
                    
                    
                //form fields
                VStack(spacing: 20) {
                    InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                        .autocapitalization(.none)
                    
                    InputView(text: $password, title: "Password", placeholder: "*****", isSecureField: true)
                }
                
                    .padding(.horizontal)
                    .padding(.top, -15)
                
                
                //sign in button
                
                Button {
                    print("Logging user in")
                } label: {
                    HStack {
                        Text("Login")
                            .fontWeight(.semibold)
                    }
                    
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 100, height: 48)
                
                }
                
                .background(Color(.purple))
                .cornerRadius(15)
                .padding(.top, 25)
                
                Spacer()
                //sign up button
                
                NavigationLink {
                    SignupView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 5) {
                        Text("Don't have an account?")
                        Text("Sign up")
                            .fontWeight(.semibold)
                            .foregroundColor(.purple)
                    }
                    .font(.system(size: 20))
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
