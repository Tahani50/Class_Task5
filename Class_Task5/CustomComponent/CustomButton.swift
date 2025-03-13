//
//  CustomButton.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//

import SwiftUI

// A reusable custom button component
struct CustomButton: View {
    let title: String // Button title text
    let action: () -> Void // Closure that defines what happens when the button is tapped

    var body: some View {
        Button(action: action) { // Button that triggers the provided action
            Text(title) // Displays the button title
                .font(.title3)
                .padding(10) // Adds padding inside the button
                .frame(maxWidth: .infinity) // Expands the button to fill available width
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(14)
        }
        .padding() // Adds padding around the button
    }
}
