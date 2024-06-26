//
//  HomeView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct HomeView: View {

    var body: some View {
        NavigationStack {
            VStack {
                Text("Home")
                    .font(.title)
                    .bold()
                    .padding()
                NavigationLink(destination: HomeDetailsView()) {
                    Text("Push next")
                }
                .buttonStyle(.bordered)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.homeViewBackground.ignoresSafeArea())
        }
    }
}

#Preview {
    HomeView()
}
