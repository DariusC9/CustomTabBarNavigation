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
        VStack {
            if actionTabs.isEmpty {
                tabBarButtons
            } else {
                tabBarActions
            }
        }
        .animation(.easeInOut)
    }
}

extension CustomTabBar {

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
        .padding([.top, .bottom], 10)
        .padding([.leading, .trailing], 30)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 20))
        .transition(.move(edge: .leading))
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
        .padding([.top, .bottom], 10)
        .padding([.leading, .trailing], 30)
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 20))
        .transition(.move(edge: .trailing))
    }
}
