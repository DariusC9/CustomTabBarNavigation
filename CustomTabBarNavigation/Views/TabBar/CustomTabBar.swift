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
                    print("1")
                }
                TabButton(imageName: "magnifyingglass") {
                    print("2")
                }
                TabButton(imageName: "clock") {
                    print("3")
                }
                TabButton(imageName: "person.fill") {
                    print("4")
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
