//
//  FeedView.swift
//  ThreadsLike
//
//  Created by Diego Carvalho on 22/05/26.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0 ... 10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .refreshable {
                print("DEBUG: Refresh threads")
            }
            .navigationTitle(Text("Threads"))
            .navigationBarTitleDisplayMode(.inline)
            
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing){
                Button{
                    
                } label: {
                    Image(systemName: "arrow.counterclockwise")
                        .foregroundColor(.black)
                    
                    
                }
                
            }
            
        }
    }
}

#Preview {
    NavigationStack{
        FeedView()
    }
}
