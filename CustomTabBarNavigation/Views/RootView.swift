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
    @StateObject private var tabBarManager = TabBarManager()

    var body: some View {
        VStack {
            tabBarManager.selectedTab.selected.view(tabBarManager: tabBarManager)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .transition(.slide)
            // SwiftUI bug, when transitioning in the same dirrection more than once, the animation flickers
            // .transition(isLeftTransition() ? .move(edge: .leading) : .move(edge: .trailing))
        }
        .overlay(alignment: .bottom) {
            CustomTabBar(tabs: tabBarManager.tabs,
                         selectedTab: $tabBarManager.selectedTab,
                         actionTabs: $tabBarManager.actionTabs)
            .hideTabBarAnimation(showTabBar: $tabBarManager.showTabBar)
        }
    }

//    private func isLeftTransition() -> Bool {
//        if selectedTab.selected.rawValue <= selectedTab.lastSelected.rawValue {
//            return true
//        }
//        return false
//    }
}

#Preview {
    RootView()
}
