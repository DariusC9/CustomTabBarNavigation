//
//  HomeView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("Home")
                .font(.title)
                .bold()
                .padding()
            Button {
                print("push next")
            } label: {
                Text("Push next")
            }
            .buttonStyle(.bordered)
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Color.homeViewBackground)
    }
}

#Preview {
    HomeView()
}
