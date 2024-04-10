//
//  CustomTabBar.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct CustomTabBar: View {

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
            .padding(.horizontal, 20)
            .padding(.bottom, 20)
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    CustomTabBar()
}
