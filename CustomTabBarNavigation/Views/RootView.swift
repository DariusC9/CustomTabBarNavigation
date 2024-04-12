//
//  RootView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct RootView: View {
    let tabs: [TabBarItem] = [TabBarItem(iconName: "house.fill"),
                              TabBarItem(iconName: "magnifyingglass"),
                              TabBarItem(iconName: "clock"),
                              TabBarItem(iconName: "person.fill")]
    @State private var selectedTab = TabBarItem(iconName: "house.fill")
    @State private var selectedScreen = 0
    @State private var showTabBar = true

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(showTabBar: $showTabBar)
                .tag(TabBarItem(iconName: "house.fill"))

            SearchView()
                .tag(TabBarItem(iconName: "magnifyingglass"))

            HistoryView()
                .tag(TabBarItem(iconName: "clock"))

            ProfileView()
                .tag(TabBarItem(iconName: "person.fill"))
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
