//
//  ContentView.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // TabView to manage multiple tabs in the app
        TabView {
            // Home tab
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house") // Tab label and icon
                }
            
            // Favorites tab
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart") // Tab label and icon
                }
            
            // Profile tab
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle") // Tab label and icon
                }
        }
        .accentColor(.green) // Sets the selected tab's accent color
    }
}

#Preview {
    ContentView()
        .environmentObject(FavoritesManager())
}
