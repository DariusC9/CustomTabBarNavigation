//
//  RootView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct RootView: View {
    let tabs: [TabBarItem] = [.home, .search, .history, .profile]
    @State private var selectedTab: TabBarItem = .home
    @State private var selectedScreen = 0
    @State private var showTabBar = true

    var body: some View {

        VStack {
            selectedTab.view()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .transition(.slide)
        }
        .overlay(alignment: .bottom) {
            CustomTabBar(tabs: tabs, selectedTab: $selectedTab)
                .hideTabBarAnimation(showTabBar: $showTabBar)
        }
    }
}

#Preview {
    RootView()
}
