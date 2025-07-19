//
//  CustomerSummaryView.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 19/07/25.
//

import SwiftUI

struct CustomerSummaryView: View {
    // State variable to hold a sample customer.
    // Changes to this customer will cause the view to update.
    @State private var customer = Customer(
        name: "Alex Johnson",
        email: "alex.j@example.com",
        isLoyaltyMember: true,
        favoriteDishes: ["Pizza", "Pasta", "Salad"]
    )

    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            // Title of the view
            Text("Customer Profile")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom, 10)

            // Display basic customer information
            VStack(alignment: .leading, spacing: 8) {
                Text(customer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(customer.email)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

            // Display loyalty status with a special badge if the customer is a loyalty member.
            if customer.isLoyaltyMember {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Loyalty Member")
                        .font(.headline)
                        .foregroundColor(.orange)
                }
                .padding(10)
                .background(Color.orange.opacity(0.15))
                .cornerRadius(8)
            }
            
            // Display the list of favorite dishes
            VStack(alignment: .leading, spacing: 5) {
                Text("Favorite Dishes")
                    .font(.headline)
                // Loop through the favorite dishes and display each one
                ForEach(customer.favoriteDishes, id: \.self) { dish in
                    Text("• \(dish)")
                }
            }
            
            // Toggle to change the loyalty status.
            // The binding `$customer.isLoyaltyMember` directly updates the customer state.
            Toggle("Is Loyalty Member", isOn: $customer.isLoyaltyMember)
                .padding(.top, 20)

            Spacer()
        }
        .padding()
    }
}

#Preview {
    CustomerSummaryView()
}
