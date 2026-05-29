//
//  ProfileThreadFilter.swift
//  ThreadsLike
//
//  Created by Diego Carvalho on 28/05/26.
//

import Foundation

enum ProfileThreadFilter: Int, CaseIterable, Identifiable{
    case threads
    case replies
    
    var title: String {
        switch self {
        case .threads:
            return "Threads"
        case .replies:
            return "Replies"

        }
    }
    
    var id: Int {
        return self.rawValue
    }
}
