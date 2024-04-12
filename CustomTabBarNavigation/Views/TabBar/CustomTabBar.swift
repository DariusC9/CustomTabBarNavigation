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

    var body: some View {
            HStack(spacing: 40) {
                ForEach(tabs, id: \.self) { tab in
                    createTabBarButton(tab: tab)
                        .onTapGesture {
                            selectedTab = tab
                        }
                }
            }
            .frame(height: 60)
            .padding([.top, .bottom], 10)
            .padding([.leading, .trailing], 30)
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 20))
    }
}

extension CustomTabBar {

    private func createTabBarButton(tab: TabBarItem) -> some View {
        Image(systemName: tab.iconName)
            .font(.system(size: 24, weight: .bold))
            .foregroundStyle(selectedTab == tab ? .blue : .gray)
    }
}
