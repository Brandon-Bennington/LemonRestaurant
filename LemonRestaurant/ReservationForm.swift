//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 02/07/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var userName: String = ""
    @State private var guestCount: Int = 1

    var body: some View {
        Form {
            Section("Reservation Details") {
                TextField("Enter your name", text: $userName)
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
            }
        }
        .navigationTitle("Reserve a Table")
    }
}

#Preview {
    ReservationForm()
}
