//
//  HomeDetailsView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 11.04.2024.
//

import SwiftUI

struct HomeDetailsView: View {
    @EnvironmentObject private var tabBarManager: TabBarManager
    @Environment(\.dismiss) private var dismis

    var body: some View {
        VStack {
            Button {
                dismis()
            } label: {
                Text("Back")
            }
            .buttonStyle(.bordered)
        }
        .navigationBarHidden(true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.homeViewBackground.ignoresSafeArea())
        .onAppear {
            tabBarManager.showTabBar = false
        }
        .onDisappear {
            tabBarManager.showTabBar = true
        }
    }
}

#Preview {
    HomeDetailsView()
}
