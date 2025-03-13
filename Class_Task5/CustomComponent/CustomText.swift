//
//  CustomText.swift
//  Class_Task5
//
//  Created by Taibah Valley Academy on 3/13/25.
//

import SwiftUI

// A reusable custom text component using @ViewBuilder
@ViewBuilder
func customText(_ text: String, font: Font, color: Color) -> some View {
    Text(text) // Displays the provided text
        .font(font) // Applies the specified font style
        .foregroundColor(color) // Sets the text color
}
