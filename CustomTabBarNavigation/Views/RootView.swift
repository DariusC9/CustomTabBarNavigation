//
//  RootView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct RootView: View {
    @State private var selectedScreen = 0
    @State private var showTabBar = true

    var body: some View {
        TabView(selection: $selectedScreen) {
            HomeView(showTabBar: $showTabBar)
                .tag(0)

            SearchView()
                .tag(1)

            HistoryView()
                .tag(2)

            ProfileView()
                .tag(3)
        }
        .overlay(alignment: .bottom) {
            CustomTabBar(selectedScreen: $selectedScreen, showTabBar: $showTabBar)
                .offset(y: showTabBar ? 0 : 200)
                .animation(Animation.bouncy, value: showTabBar)
        }
    }
}

#Preview {
    RootView()
}
