//
//  View Ext..swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 12.04.2024.
//

import SwiftUI

extension View {
    func hideTabBarAnimation(showTabBar: Binding<Bool>) -> some View {
        self.modifier(HideTabBarAnimation(showTabBar: showTabBar))
    }
}
