//
//  ThreadsTextFieldModifier.swift
//  ThreadsLike
//
//  Created by Diego Carvalho on 21/05/26.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal, 24)
    }
}
