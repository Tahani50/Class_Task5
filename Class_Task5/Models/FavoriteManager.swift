//
//  FavoriteManager.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//


import SwiftUI

class FavoritesManager: ObservableObject {
    @Published var favoriteUsers: [User] = []
}
