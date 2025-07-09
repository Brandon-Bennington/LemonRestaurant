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
    @State private var reservationDate = Date()
    @State private var allergyNotes: String = ""
    @State private var showSummary = false

    // Computed property to check if the selected date is in the past
    var isDateInvalid: Bool {
        // Compare the selected date with the current date, ignoring seconds
        return Calendar.current.compare(reservationDate, to: Date(), toGranularity: .minute) == .orderedAscending
    }

    var body: some View {
        Form {
            Section("Reservation Details") {
                TextField("Enter your name", text: $userName)
                if userName.isEmpty {
                    Text("Please enter your name")
                        .foregroundColor(.red)
                }

                DatePicker("Date", selection: $reservationDate, in: Date()..., displayedComponents: [.date, .hourAndMinute])
                
                // Show warning for past dates
                if isDateInvalid {
                    Text("Please select a valid date")
                        .foregroundColor(.red)
                }
            }

            Section("Guest Information") {
                Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)

                // Guest count logic
                if guestCount > 8 {
                    Text("For parties larger than 8, we will call to confirm")
                        .foregroundColor(.orange)
                } else if guestCount >= 5 {
                    Text("For large parties, please arrive 10 minutes early")
                        .foregroundColor(.secondary)
                }
                
                TextField("Allergy Notes (Optional)", text: $allergyNotes)
            }

            Section {
                Button("Confirm Reservation") {
                    showSummary = true
                }
                // Disable button if name is empty OR date is invalid
                .disabled(userName.isEmpty || isDateInvalid)
            }
        }
        .navigationTitle("Reserve a Table")
        .sheet(isPresented: $showSummary) {
            // Present the summary view as a sheet
            ReservationSummaryView(
                userName: userName,
                guestCount: guestCount,
                allergyNotes: allergyNotes
            )
        }
    }
}

#Preview {
    NavigationView {
        ReservationForm()
    }
}
