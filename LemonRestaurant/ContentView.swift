//
//  ContentView.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 30/06/25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView{
            VStack  {
                Image("littleLemonLogo")
                Image(systemName: "keyboard")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)

                Text("Hello, world!")
                    .font(.largeTitle)
                    .foregroundColor(.blue)

                NavigationLink(destination: AboutView()) {
                    Text("Go to About")
                }

                // Add this link to your ContentView
                NavigationLink(destination: ReservationForm()) {
                    Text("Reserve a Table")
                }
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
