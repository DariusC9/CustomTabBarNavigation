//
//  CustomTabBar.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedScreen: Int
    @Binding var showTabBar: Bool

    var body: some View {
            HStack(spacing: 40) {
                TabButton(imageName: "house.fill") {
                    selectedScreen = 0
                }
                .foregroundStyle(selectedScreen == 0 ? .blue : .gray)
                TabButton(imageName: "magnifyingglass") {
                   selectedScreen = 1
                }
                .foregroundStyle(selectedScreen == 1 ? .blue : .gray)
                TabButton(imageName: "clock") {
                    selectedScreen = 2
                }
                .foregroundStyle(selectedScreen == 2 ? .blue : .gray)
                TabButton(imageName: "person.fill") {
                    selectedScreen = 3
                }
                .foregroundStyle(selectedScreen == 3 ? .blue : .gray)
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
