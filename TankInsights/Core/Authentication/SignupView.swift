//
//  SignupView.swift
//  TankInsights
//
//  Created by cristal cervantes on 6/19/24.
//

import SwiftUI

struct SignupView: View {
    
    @State private var fullName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                //image
                Image("fish")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .padding(.vertical, 5)
                    
                
        
            }
            
            VStack(spacing: 20) {
                InputView(text: $fullName, title: "Full Name", placeholder: "John Doe")
                
                InputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                    .autocapitalization(.none)
                
                InputView(text: $password, title: "Password", placeholder: "*****", isSecureField: true)
                
                InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "*****", isSecureField: true)
            }
                .padding(.horizontal)
                .padding(.top, -15)
            
            Button {
                print("Registering new user")
            } label: {
                HStack {
                    Text("Register")
                        .fontWeight(.semibold)
                }
                
                .foregroundColor(.white)
                .frame(width: UIScreen.main.bounds.width - 100, height: 48)
            
            }
            
            .background(Color(.purple))
            .cornerRadius(15)
            .padding(.top, 25)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 5) {
                    Text("Already have an account?")
                    Text("Login")
                        .fontWeight(.semibold)
                        .foregroundColor(.purple)
                }
                .font(.system(size: 20))
            }
        }
    }
}

#Preview {
    SignupView()
}
