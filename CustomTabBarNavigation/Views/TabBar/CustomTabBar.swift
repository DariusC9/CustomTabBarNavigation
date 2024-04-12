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
    }
}
