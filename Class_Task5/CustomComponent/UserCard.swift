//
//  UserCard.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//

import SwiftUI

// A custom user card component displaying user details
struct UserCard: View {
    let user: User // User data model instance
    @Environment(\.colorScheme) var colorScheme // Access the current color scheme (light or dark mode)

    var body: some View {
        VStack {
            // User profile image
            Image(user.profileImage)
                .resizable() // Allows the image to be resized
                .aspectRatio(contentMode: .fill) // Fills the frame while maintaining aspect ratio
                .frame(width: 200, height: 200) // Sets image dimensions

            // User details (name and description)
            cardText
                .padding(.horizontal, 8) // Adds horizontal padding to text content
        }
        .frame(width: 230, height: 330) // Sets card width and height
        .background(
            RoundedRectangle(cornerRadius: 15)
                .fill(colorScheme == .dark ? Color.black.opacity(0.8) : Color.white) // Adjusts background color based on dark/light mode
        )
        .clipShape(RoundedRectangle(cornerRadius: 15)) // Clips the card shape
        .shadow(radius: 5) // Adds a subtle shadow effect
        .padding() // Adds padding around the entire card
    }
    
    // View for displaying user's name and description
    var cardText: some View {
        VStack {
            Text(user.name) // Display user name
                .font(.headline) // Sets font style for name
            
            Text(user.description) // Display user description
                .font(.subheadline) // Sets font style for description
                .foregroundColor(.gray) // Uses gray text for better readability
                .multilineTextAlignment(.center) // Centers text alignment
        }
    }
}
