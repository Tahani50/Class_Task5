//
//  FavoritesView.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//

import SwiftUI

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager // Access shared favorites manager
    @Namespace private var animation // Namespace for smooth animations
    @State private var selectedUser: User? // Tracks the selected user for expanded profile view
    
    var body: some View {
        ZStack {
            NavigationView { // Ensure NavigationView wraps the entire content
                VStack {
                    if favoritesManager.favoriteUsers.isEmpty {
                        // Show message when there are no favorite users
                        VStack(spacing: 10) {
                            Image(systemName: "heart.slash")
                                .font(.system(size: 50))
                                .foregroundColor(.gray)
                            customText("No Favorites Available", font: Font.headline, color: Color.gray)
                        }
                        .padding()
                    } else {
                        ScrollView {
                            LazyVGrid(columns: [GridItem(.flexible(), spacing: 20)], spacing: 20) {
                                ForEach(favoritesManager.favoriteUsers) { user in
                                    if selectedUser?.id == user.id {
                                        Color.clear // Placeholder for the selected user
                                    } else {
                                        UserCard(user: user)
                                            .matchedGeometryEffect(id: "profile_\(user.id)", in: animation, isSource: selectedUser == nil)
                                            .onTapGesture {
                                                withAnimation(.spring()) {
                                                    selectedUser = user // Set selected user when tapped
                                                }
                                            }
                                    }
                                }
                            }
                            .padding()
                        }
                        .navigationTitle("Favorites") // Set navigation title here
                    }
                }
            }
            
            // Expanded profile view when a user is selected
            if let selectedUser = selectedUser {
                ExpandedProfileView(user: selectedUser, animation: animation) {
                    withAnimation(.spring()) {
                        self.selectedUser = nil // Close expanded view
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black.opacity(0.5)) // Dim background
                .edgesIgnoringSafeArea(.all)
                .onTapGesture {
                    withAnimation {
                        self.selectedUser = nil // Dismiss on tap
                    }
                }
            }
        }
    }
}


