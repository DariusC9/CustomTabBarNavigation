//
//  CustomTabBar.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct CustomTabBar: View {
    let tabs: [TabBarItem] = [TabBarItem(iconName: "house.fill", color: .gray),
                              TabBarItem(iconName: "magnifyingglass", color: .gray),
                              TabBarItem(iconName: "clock", color: .gray),
                              TabBarItem(iconName: "person.fill", color: .gray)]
    @Binding var selectedScreen: Int
    @Binding var showTabBar: Bool

    var body: some View {
            HStack(spacing: 40) {
                ForEach(tabs, id: \.self) { tab in
                    createTabBarButton(tab: tab)
                }
            }
            .frame(height: 60)
            .padding([.top, .bottom], 10)
            .padding([.leading, .trailing], 30)
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    CustomTabBar(selectedScreen: .constant(0), showTabBar: .constant(true))
}

extension CustomTabBar {

    private func createTabBarButton(tab: TabBarItem) -> some View {
        Image(systemName: tab.iconName)
            .font(.system(size: 24, weight: .bold))
            .foregroundStyle(tab.color)
    }
}
