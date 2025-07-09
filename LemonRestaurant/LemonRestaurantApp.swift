//
//  LemonRestaurantApp.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 30/06/25.
//

import SwiftUI

@main
struct LemonRestaurantApp: App {
    // These two lines manage the state for the entire app.
    @State private var isLoggedIn = false
    @State private var userName = ""

    var body: some Scene {
        WindowGroup {
            // This logic now decides which view to show.
            if isLoggedIn {
                // When isLoggedIn becomes true, this view will appear.
                HomeView(userName: userName)
            } else {
                // The app starts by showing the LoginView.
                // We pass bindings so LoginView can change isLoggedIn and userName.
                LoginView(isLoggedIn: $isLoggedIn, userName: $userName)
            }
        }
    }
}
