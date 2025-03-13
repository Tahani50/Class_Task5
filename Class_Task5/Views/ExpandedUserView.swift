//
//  ExpandedUserView.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//

import SwiftUI

struct ExpandedProfileView: View {
    let user: User
    var animation: Namespace.ID
    var onClose: () -> Void
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(colorScheme == .dark ? Color.black : Color.white)
                .frame(width: 300, height: 400)
                .shadow(color: colorScheme == .dark ? Color.white.opacity(0.2) : Color.black.opacity(0.2), radius: 10)
                .matchedGeometryEffect(id: "profile_\(user.id)", in: animation)
                .overlay(
                    VStack {
                        // User profile image
                        Image(user.profileImage)
                            .resizable() // Allows the image to be resized
                            .aspectRatio(contentMode: .fill) // Fills the frame while maintaining aspect ratio
                            .frame(width: 200, height: 200) // Sets image dimensions
                        
                        Text(user.name)
                            .font(.title)
                            .foregroundColor(colorScheme == .dark ? .white : .black)
                        
                        Text(user.description)
                            .font(.subheadline)
                            .foregroundColor(colorScheme == .dark ? .gray : .black.opacity(0.7))
                            .multilineTextAlignment(.center)
                        
                        CustomButton(title: "Close", action:  onClose)
                    }
                    .padding()
                )
        }
        .padding()
    }
}


