//
//  HideTabBarAnimation.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 12.04.2024.
//

import SwiftUI

struct HideTabBarAnimation: ViewModifier {
    @Binding var showTabBar: Bool

    func body(content: Content) -> some View {
        content
            .offset(y: showTabBar ? 0 : 200)
            .animation(Animation.bouncy, value: showTabBar)
    }
}
