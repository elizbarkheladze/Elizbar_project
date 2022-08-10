//
//  PostFilter.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import Foundation


enum PostFilter: Int , CaseIterable {
    case published
    case replies
    case likes
    
    var title : String {
        switch self {
        case.published: return "Posts"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
