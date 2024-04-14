//
//  AnyTransition ext..swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 13.04.2024.
//

import SwiftUI

extension AnyTransition {

    static func tabBarItemsTrans(direction: Edge) -> AnyTransition {
        let insertion = AnyTransition.move(edge: direction)
        let removal = AnyTransition.move(edge: direction)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
