//
//  UserCell.swift
//  ThreadsLike
//
//  Created by Diego Carvalho on 26/05/26.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack{
            CircularProfileImageView()
            
            VStack(alignment: .leading){
                Text("thehunter")
                
                    .fontWeight(.semibold)
                Text("The Hunter")
                
            }
            .font(.footnote)
            
            Spacer()
            
            Text("Follow")
                .font(.subheadline)
                .fontWeight(.semibold)
                .frame(width: 100, height: 32)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray4), lineWidth: 1)
                }
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
