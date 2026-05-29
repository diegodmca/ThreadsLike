//
//  ProfileView.swift
//  ThreadsLike
//
//  Created by Diego Carvalho on 22/05/26.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace private var animation
    private var filterBarWith: CGFloat{
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 16
    }
    var body: some View {
        ScrollView(showsIndicators: false){
            // bio and stats
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        //full name and username
                        VStack(alignment: .leading, spacing: 4) {
                            Text("The Hunter")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            Text("The Hunter")
                                .font(.subheadline)
                        }
                        Text("Main character of bloodborne")
                            .font(.footnote)
                        
                        Text("2 Followers")
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    CircularProfileImageView()
                    
                }
                
                Button {
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .cornerRadius(8)
                }
                
                // user content  view
                
                VStack{
                    HStack{
                        ForEach(ProfileThreadFilter.allCases){ filter in
                            VStack{
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(selectedFilter == filter ? .semibold : .regular)
                                
                                if selectedFilter == filter {
                                    Rectangle()
                                        .frame(width: filterBarWith, height: 1)
                                        .foregroundColor(.black)
                                        .matchedGeometryEffect(id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .frame(width: filterBarWith, height: 1)
                                        .foregroundColor(.clear)
                                    
                                }
                                
                            }
                            .onTapGesture{
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                    
                                }
                            }
                        }
                        
                    }
                }
                
                LazyVStack{
                    ForEach(0 ... 10, id: \.self){ thread in
                        ThreadCell()
                    }
                }
                
                
                
            }
     
        }
        .padding(.horizontal)




    }
}

#Preview {
    ProfileView()
}
