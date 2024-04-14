//
//  SelectedItem.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 14.04.2024.
//

import Foundation

struct SelectedItem {
    let selected: TabBarItem
    let lastSelected: TabBarItem

    static func initialState() -> SelectedItem {
        return .init(selected: .home, lastSelected: .home)
    }
}
