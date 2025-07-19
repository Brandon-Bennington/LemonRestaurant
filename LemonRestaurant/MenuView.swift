//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 09/07/25.
//

import SwiftUI

struct MenuView: View {
    @State private var showDesserts = false
    @State private var showOnlyPremium = false
    
    // A comprehensive list of menu items from the screenshots
    let menuItems: [MenuItem] = [
        MenuItem(name: "Pizza", description: "Cheesy and hot", price: 9.99),
        MenuItem(name: "Steak", description: "Juicy grilled", price: 14.00),
        MenuItem(name: "Pasta", description: "Creamy Alfredo", price: 10.50),
        MenuItem(name: "Salad", description: "Fresh greens", price: 6.00),
        MenuItem(name: "Soup", description: "Warm and comforting", price: 4.75),
        MenuItem(name: "Burger", description: "Grilled beef with cheese", price: 11.00),
        MenuItem(name: "Fish Tacos", description: "Crispy fish with spicy mayo", price: 10.25)
    ]
    
    // This computed property returns the items to be displayed based on the toggle's state
    var displayedItems: [MenuItem] {
        if showOnlyPremium {
            return menuItems.filter { $0.price >= 10 }
        }
        return menuItems
    }
    
    // Calculates the average price of the items currently being displayed
    var averagePrice: Double {
        guard !displayedItems.isEmpty else { return 0 }
        let totalPrice = displayedItems.reduce(0) { $0 + $1.price }
        return totalPrice / Double(displayedItems.count)
    }
    
    // Counts for the summary footer
    var premiumCount: Int { displayedItems.filter { $0.price >= 10 }.count }
    var regularCount: Int { displayedItems.filter { $0.price < 10 }.count }

    var body: some View {
        VStack(spacing: 15) {
            // Header with dynamic average price
            VStack {
                HStack(spacing: 10) {
                    Image(systemName: "fork.knife")
                        .font(.title)
                        .foregroundColor(.orange)
                    Text("Today's Menu")
                        .font(.largeTitle)
                }
                Text("Average price: $\(String(format: "%.2f", averagePrice))")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            // The text for this toggle is taken directly from your screenshot
            Toggle("Show an special text", isOn: $showOnlyPremium)
            
            Button("View Desserts") {
                showDesserts.toggle()
            }
            .buttonStyle(.bordered)
            .tint(.green)
            
            // The list now uses the `displayedItems` to show either all or filtered items
            List(displayedItems) { item in
                MenuItemView(item: item)
            }
            .listStyle(.insetGrouped)
            
            // Dynamic summary footer
            HStack {
                Text("Premium: \(premiumCount)")
                Spacer()
                Text("Regular: \(regularCount)")
                Spacer()
                // The label "Total" is used to match the screenshot, though it displays the average price
                Text("Total: $\(String(format: "%.2f", averagePrice))")
            }
            .font(.callout)
            .padding()
            .background(Color.yellow.opacity(0.3))
            .cornerRadius(10)

        }
        .padding(.horizontal)
        .sheet(isPresented: $showDesserts) {
            DessertView()
        }
    }
}


#Preview {
    MenuView()
}
