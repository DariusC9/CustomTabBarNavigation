//
//  CustomTabBar.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct CustomTabBar: View {
    let tabs: [TabBarItem]
    @Binding var selectedTab: TabBarItem
    @Binding var actionTabs: [TabBarActionItem]

    var body: some View {
        ZStack {
            tabBarBackground
            if actionTabs.isEmpty {
                tabBarButtons
                    .transition(.tabBarItemsTrans(direction: .leading))
            } else {
                tabBarActions
                    .transition(.tabBarItemsTrans(direction: .trailing))
            }
        }
        .animation(Animation.easeInOut(duration: 0.25), value: actionTabs)
        .frame(width: 300, height: 60)
        .clipped()
    }
}

extension CustomTabBar {

    var tabBarBackground: some View {
        Color.white
            .frame(height: 60)
            .clipShape(.rect(cornerRadius: 20))
    }

    var tabBarButtons: some View {
        HStack(spacing: 40) {
            ForEach(tabs, id: \.self) { tab in
                tab.tabImage()
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            selectedTab = tab
                        }
                    }
                    .foregroundStyle(selectedTab == tab ? .blue : .gray)
            }
        }
    }

    var tabBarActions: some View {
        HStack(spacing: 40) {
            ForEach(actionTabs, id: \.self) { actionTabs in
                actionTabs.tabImage()
                    .onTapGesture {
                        // custom function
                    }
            }
        }
    }
}
