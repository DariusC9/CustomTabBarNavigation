//
//  TabBarManager.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 14.04.2024.
//

import Foundation

final class TabBarManager: ObservableObject {
    let tabs: [TabBarItem] = [.home, .search, .history, .profile]
    @Published var actionTabs: [TabBarActionItem] = []
    @Published var selectedTab = SelectedItem.initialState()
    @Published var showTabBar = true
}
