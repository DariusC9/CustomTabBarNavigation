//
//  HomeDetailsView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 11.04.2024.
//

import SwiftUI

struct HomeDetailsView: View {
    @Binding var showTabBar: Bool

    var body: some View {

        Button {
            print("push next")
        } label: {
            Text("Back")
        }
        .buttonStyle(.bordered)
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Color.homeViewBackground)
        .onAppear {
            showTabBar = false
        }
        .onDisappear {
            showTabBar = true
        }
    }
}

#Preview {
    HomeDetailsView(showTabBar: .constant(false))
}
