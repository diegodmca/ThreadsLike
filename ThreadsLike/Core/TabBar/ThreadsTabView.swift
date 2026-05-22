//
//  ThreadsTabView.swift
//  ThreadsLike
//
//  Created by Diego Carvalho on 21/05/26.
//

import SwiftUI

struct ThreadsTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab){
            Text("Feed View")
                .tabItem {
                    Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                    
                }
        }
        
    }
}

#Preview {
    ThreadsTabView()
}
