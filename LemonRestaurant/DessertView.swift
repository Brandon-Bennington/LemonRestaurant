//
//  DessertView.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 14/07/25.
//

import SwiftUI

struct DessertView: View {
    let dessertMenuItems = [
        DessertItem(name: "Tiramisu", description: "", price: 5.99),
        DessertItem(name: "Cheesecake", description: "", price: 6.50),
        DessertItem(name: "Gelato", description: "", price: 4.75),
    ]
    var body: some View {
        NavigationView {
            List(dessertMenuItems) { dessert in
                HStack {
                    Text(dessert.name)
                        .font(.title3)
                    
                    Spacer()
                    
                    Text(String(format: "%.2f", dessert.price))
                        .foregroundColor(.gray)
                    
                }
            }
        }
    }
}

#Preview {
    DessertView()
}
