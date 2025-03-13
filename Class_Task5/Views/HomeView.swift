//
//  HomeView.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//

import SwiftUI

struct HomeView: View {
    let viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(viewModel.users) { user in
                        NavigationLink(destination: UserDetailView(user: user)) {
                            UserCard(user: user)
                        }
                    }
                }
            }
            .navigationTitle("User Profiles")
        }
    }
}


#Preview {
    HomeView()
        .environmentObject(FavoritesManager())
}
