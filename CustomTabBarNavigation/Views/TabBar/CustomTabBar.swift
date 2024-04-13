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
                    .transition(.move(edge: .leading))
            } else {
                tabBarActions
                    .transition(.move(edge: .trailing))
            }
        }
        .animation(Animation.easeInOut(duration: 0.2), value: actionTabs)
    }
}

extension CustomTabBar {

    var tabBarBackground: some View {
        Color.white
            .frame(height: 60)
            .clipShape(.rect(cornerRadius: 20))
            .padding([.top, .bottom], 10)
            .padding([.leading, .trailing], 30)
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
        .frame(height: 60)
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
        .frame(height: 60)
    }
}
