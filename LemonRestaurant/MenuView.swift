//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 09/07/25.
//

import SwiftUI

struct MenuView: View {
    @State private var showMessage = false
    @State private var showDesserts = false
    
    let menuItems = [
        MenuItem(name: "Pizza", description: "Cheesy and hot", price:9.0),
        MenuItem(name: "Pasta", description: "Spaghetti with tomato sauce", price:8.0),
        MenuItem(name: "Salad", description: "Fresh greens and veggies", price:7.0)
    ]
    
    var sortedMenuItems: [MenuItem] {
        menuItems.sorted { $0.name < $1.name }
    }
    
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                Text("Today's Menu")
                    .font(.largeTitle)
            }
            .padding()
            
            VStack(spacing: 20){
                Toggle("Show a special text", isOn: $showMessage)
                    .padding()
                if showMessage {
                    Text("You unlocked a surprise!")
                        .font(.title3)
                        .foregroundColor(.green)
                }
            }
            
            Button("View Desserts"){
                showDesserts.toggle()
            }
            .padding()
            .background(.green.opacity(0.4))
            .cornerRadius(12)
            .foregroundColor(Color.black)
            
            List(sortedMenuItems) { item in
                MenuItemView(item:item)
            }

            .sheet(isPresented: $showDesserts){
                DessertView()
            }
        }
    }
}

#Preview {
    MenuView()
}

