//
//  UserDetailView.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    @EnvironmentObject var favorites: FavoritesManager
    
    var body: some View {
        VStack(spacing: 20) {
            
            // User profile image
            Image(user.profileImage)
                .resizable() // Allows the image to be resized
                .aspectRatio(contentMode: .fill) // Fills the frame while maintaining aspect ratio
                .frame(width: 200, height: 200) // Sets image dimensions
            
            Text(user.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(user.description)
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 10)
            
            CustomButton(title: favorites.favoriteUsers.contains(where: { $0.id == user.id }) ? "Remove from Favorites" : "Add to Favorites"){
                if favorites.favoriteUsers.contains(where: { $0.id == user.id }) {
                    favorites.favoriteUsers.removeAll { $0.id == user.id }
                } else {
                    favorites.favoriteUsers.append(user)
                }
            }

        }
        .navigationTitle(user.name)
    }
}

