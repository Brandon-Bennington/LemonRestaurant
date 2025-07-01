//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 02/07/25.
//

import SwiftUI

struct AboutView: View {
    @State private var orders = 0
    @State private var userName = ""
    @State private var reservations = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome \(userName) to Little Lemon!")
                    .font(.title)
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                Text("You've ordered \(orders) times")
                Button("Order again"){
                    orders += 1
                }
                
                Button("Reset"){
                    orders = 0
                }
                TextField("Enter your name",text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button("Add people to your reservation"){
                    reservations += 1
                }
                Text("Hi \(userName), you have ordered a table for \(reservations) today")
                    .font(.title3)
                    .padding()
                Text(String(repeating: "🍽️", count: reservations))
                Button("Reset Number of People"){
                    reservations = 0
                }
                .navigationTitle("About Us")
            }
        }
    }
}

#Preview {
    AboutView()
}
