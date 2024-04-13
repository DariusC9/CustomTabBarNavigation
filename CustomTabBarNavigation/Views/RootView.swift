//
//  RootView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct SelectedItem {
    let selected: TabBarItem
    let lastSelected: TabBarItem

    static func initialState() -> SelectedItem {
        return .init(selected: .home, lastSelected: .home)
    }
}

struct RootView: View {
    let tabs: [TabBarItem] = [.home, .search, .history, .profile]
    @State private var actionTabs: [TabBarActionItem] = []
    @State private var selectedTab = SelectedItem.initialState()
    @State private var selectedScreen = 0
    @State private var showTabBar = true

    var body: some View {
        VStack {
            selectedTab.selected.view(showTabBar: $showTabBar, tabBarActions: $actionTabs)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .transition(isLeftTransition() ? .backslide : .frontslide)
        }
        .overlay(alignment: .bottom) {
            CustomTabBar(tabs: tabs, selectedTab: $selectedTab, actionTabs: $actionTabs)
                .hideTabBarAnimation(showTabBar: $showTabBar)
        }
    }

    private func isLeftTransition() -> Bool {
        if selectedTab.selected.rawValue < selectedTab.lastSelected.rawValue {
            return true
        }
        return false
    }
}

#Preview {
    RootView()
}

extension AnyTransition {
    static var backslide: AnyTransition {
        AnyTransition.move(edge: .trailing)
    }

    static var frontslide: AnyTransition {
        AnyTransition.move(edge: .leading)
    }
}
