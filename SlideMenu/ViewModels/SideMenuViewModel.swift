//
//  SideMenuViewModel.swift
//  SlideMenu
//
//  Created by Bruno Coronado on 27/09/21.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case notifications
    case messages
    case list
    case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .notifications: return "Notifications"
        case .messages: return "Messages"
        case .list: return "List"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .notifications: return "bell"
        case .messages: return "bubble.left"
        case .list: return "list.bullet"
        case .logout: return "arrow.left.square"
        }
    }
}
