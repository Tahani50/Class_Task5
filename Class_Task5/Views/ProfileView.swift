//
//  ProfileView.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//


import SwiftUI

struct ProfileView: View {
    
    // State variable to track whether dark mode is enabled
    @State private var isDarkMode = false
    
    var body: some View {
        VStack {
            // Toggle switch to enable/disable dark mode
            Toggle("Dark Mode", isOn: $isDarkMode)
                .font(.title3)
                .padding()
        }
        .background(.green.opacity(0.2)) // Light gray background with some transparency
        .cornerRadius(14) // Rounded corners for styling
        .preferredColorScheme(isDarkMode ? .dark : .light) // Apply selected color scheme
        .padding() // Add padding around the entire VStack
    }
}


