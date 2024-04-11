//
//  HomeView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct HomeView: View {
    @Binding var showTabBar: Bool

    var body: some View {

        NavigationStack {
            VStack {
                Text("Home")
                    .font(.title)
                    .bold()
                    .padding()
                NavigationLink(destination: HomeDetailsView(showTabBar: $showTabBar)) {
                    Text("Push next")
                }
                .buttonStyle(.bordered)
            }
            .containerRelativeFrame([.horizontal, .vertical])
            .background(Color.homeViewBackground)
        }
    }
}

#Preview {
    HomeView(showTabBar: .constant(false))
}
