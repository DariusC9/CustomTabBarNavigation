//
//  TabButton.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct TabButton: View {
    let imageName: String
    let action: () -> Void
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: imageName)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    TabButton(imageName: "house.fill", action: {
        print("Button pressed")
    })
}
