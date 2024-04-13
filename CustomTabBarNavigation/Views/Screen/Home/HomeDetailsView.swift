//
//  HomeDetailsView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 11.04.2024.
//

import SwiftUI

struct HomeDetailsView: View {
    @Binding var showTabBar: Bool
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
