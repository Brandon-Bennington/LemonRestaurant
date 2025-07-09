//
//  LoginView.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 09/07/25.
//

import SwiftUI

struct LoginView: View {
    // Bindings to the state variables in LemonRestaurantApp
    @Binding var isLoggedIn: Bool
    @Binding var userName: String
    
    // Local state for this view's text field
    @State private var nameInput: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .padding(.vertical, 40)

            TextField("Enter your name", text: $nameInput)
                .textFieldStyle(.roundedBorder)
            
            Button("Log In") {
                // When tapped, update the shared user name and set isLoggedIn to true
                userName = nameInput
                isLoggedIn = true
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 10)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(8)
            .disabled(nameInput.isEmpty)

            Spacer()
        }
        .padding()
    }
}

// THIS IS THE CORRECTED PREVIEW
#Preview {
    LoginView(isLoggedIn: .constant(false), userName: .constant(""))
}
