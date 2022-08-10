//
//  BurgerMenuViewModel.swift
//  Elizbar_project
//
//  Created by alta on 8/10/22.
//

import Foundation

enum BurgerMenuViewModel : Int , CaseIterable {
    case profile
    case lists
    case bookmarks
    case logout
    
    var info : String {
        switch self{
        case .profile: return "Profile"
        case .lists: return "Lists"
        case .bookmarks: return "BookMarks"
        case .logout: return "LogOut"
        }
    
    }
    
    var imageLink : String {
        switch self{
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}
