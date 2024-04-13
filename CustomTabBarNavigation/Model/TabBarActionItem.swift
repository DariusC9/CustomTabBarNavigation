//
//  TabBarActionItem.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 13.04.2024.
//

import SwiftUI

enum TabBarActionItem: String, CaseIterable, CustomStringConvertible {
    // tabs for actions
    case goBack
    case delete
    case notFavorite
    case favorite

    var description: String {
        switch self {
        case .goBack: "Back"
        case .delete: "Delete"
        case .notFavorite: "Not favorite"
        case .favorite: "Favorite"
        }
    }

    @ViewBuilder func tabImage() -> some View {
        switch self {
        case .goBack:
            Image(systemName: "arrowshape.backward.fill")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.gray)
        case .delete:
            Image(systemName: "trash")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.red)
        case .notFavorite:
            Image(systemName: "star.slash.fill")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.gray)
        case .favorite:
            Image(systemName: "star.fill")
                .font(.system(size: 24, weight: .bold))
                .foregroundStyle(.yellow)
        }
    }
}
