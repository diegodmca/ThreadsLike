//
//  CircularProfileImageView.swift
//  ThreadsLike
//
//  Created by Diego Carvalho on 26/05/26.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
        Image("the-hunter")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
