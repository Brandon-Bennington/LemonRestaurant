//
//  ReservationSummaryView.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 03/07/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    @Environment(\.dismiss) var dismiss
    
    let userName: String
    let guestCount: Int
    let allergyNotes: String

    var body: some View {
        VStack(spacing: 20) {
            Text("Reservation Confirmed!")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(.green)

            VStack(alignment: .leading, spacing: 15) {
                Text("Thank you, **\(userName)**, your reservation is confirmed for **\(guestCount)** people.")
                
                if !allergyNotes.isEmpty {
                    Text("Note: We will accommodate the following allergies: **\(allergyNotes)**")
                }
            }
            .padding()
            
            Button("Done") {
                dismiss()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    ReservationSummaryView(
        userName: "John Doe",
        guestCount: 4,
        allergyNotes: "Peanuts, Shellfish"
    )
}
