//
//  HomeView.swift
//  LemonRestaurant
//
//  Created by Brandon Bennington on 09/07/25.
//

import SwiftUI

struct HomeView: View {
    // Passed from the login screen
    let userName: String

    // State for the reservation form
    @State private var reservationName: String = ""
    @State private var guestCount: Int = 1
    @State private var reservationDate = Date()
    @State private var allergyNotes: String = ""
    @State private var showSummary = false
    
    // Computed property to check if the selected date is in the past
    var isDateInvalid: Bool {
        return Calendar.current.compare(reservationDate, to: Date(), toGranularity: .minute) == .orderedAscending
    }

    var body: some View {
        NavigationView {
            VStack {
                // Header
                Text("Welcome, \(userName)!")
                    .font(.title)
                    .padding(.top)
                
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 80)
                
                // Reservation Form embedded in the view
                Form {
                    Section("RESERVATION DETAILS") {
                        TextField("Name", text: $reservationName)
                        
                        // Guest Stepper
                        Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                        
                        // Date Picker
                        DatePicker("Date", selection: $reservationDate, in: Date()..., displayedComponents: [.date, .hourAndMinute])
                        
                        if isDateInvalid {
                            Text("Please select a valid date")
                                .foregroundColor(.red)
                        }
                        
                        // Allergy Notes
                        TextField("Allergy Notes", text: $allergyNotes)
                        
                        // Confirm Button
                        Button("Confirm Reservation") {
                            showSummary = true
                        }
                        .disabled(reservationName.isEmpty || isDateInvalid)
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $showSummary) {
                // Present the summary view
                ReservationSummaryView(
                    userName: reservationName,
                    guestCount: guestCount,
                    allergyNotes: allergyNotes
                )
            }
            .onAppear {
                // Pre-fill the reservation name with the logged-in user's name
                reservationName = userName
            }
        }
    }
}

#Preview {
    HomeView(userName: "Sam")
}
