//
//  ExploreView.swift
//  ThreadsLike
//
//  Created by Diego Carvalho on 22/05/26.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 10, id: \.self){ user in
                        VStack {
                            UserCell()
                            
                            Divider()
                        }
                        .padding(.vertical, 4)
                        
                    }
                }
                .navigationTitle("Search")
                .searchable(text: $searchText, prompt: "Search")
                
            }
            
            
        }
    }
}

#Preview {
    ExploreView()
}
