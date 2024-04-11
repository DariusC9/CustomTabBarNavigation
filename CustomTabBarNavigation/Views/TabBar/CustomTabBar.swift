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
    @State private var yOffSet: CGFloat = 200

    var body: some View {
            HStack(spacing: 40) {
                TabButton(imageName: "house.fill") {
                    selectedScreen = 0
                }
                TabButton(imageName: "magnifyingglass") {
                   selectedScreen = 1
                }
                TabButton(imageName: "clock") {
                    selectedScreen = 2
                }
                TabButton(imageName: "person.fill") {
                    selectedScreen = 3
                }
            }
            .frame(height: 60)
            .padding([.top, .bottom], 10)
            .padding([.leading, .trailing], 30)
            .background(Color.white)
            .clipShape(.rect(cornerRadius: 20))
            .offset(y: yOffSet)
            .onAppear {
                withAnimation(.bouncy) {
                    yOffSet = 0
                }
            }
    }
}

#Preview {
    CustomTabBar(selectedScreen: .constant(0), showTabBar: .constant(true))
}
