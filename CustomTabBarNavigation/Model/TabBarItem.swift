//
//  TabBarItem.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 12.04.2024.
//

import SwiftUI

enum TabBarItem: Int, CaseIterable, CustomStringConvertible {
    // main tabs
    case home = 0
    case search
    case history
    case profile

    var description: String {
        switch self {
        case .home: "Home"
        case .search: "Search"
        case .history: "History"
        case .profile: "Profile"
        }
    }

    @ViewBuilder func tabImage() -> some View {
        switch self {
        case .home:
            Image(systemName: "house.fill")
                .font(.system(size: 24, weight: .bold))
        case .search:
            Image(systemName: "magnifyingglass")
                .font(.system(size: 24, weight: .bold))
        case .history:
            Image(systemName: "clock")
                .font(.system(size: 24, weight: .bold))
        case .profile:
            Image(systemName: "person.fill")
                .font(.system(size: 24, weight: .bold))
        }
    }

    @ViewBuilder func view(tabBarManager: TabBarManager) -> some View {
        switch self {
        case .home:
            HomeView()
                .environmentObject(tabBarManager)
        case .search:
            SearchView()
                .environmentObject(tabBarManager)
        case .history:
            HistoryView()
                .environmentObject(tabBarManager)
        case .profile:
            ProfileView()
                .environmentObject(tabBarManager)
        }
    }
}
