//
//  User.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//

import SwiftUI

// Model struct representing a user, conforming to Identifiable and Equatable protocols
struct User: Identifiable, Equatable {
    let id = UUID() // Unique identifier for each user instance
    let name: String // User's name
    let profileImage: String // Name of the profile image asset or URL
    let description: String // Short user description or bio
}
