//
//  HistoryDetailsView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 13.04.2024.
//

import SwiftUI

struct HistoryDetailsView: View {
    @EnvironmentObject private var tabBarManager: TabBarManager
    @Environment(\.dismiss) private var dismis

    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .bold()
                .padding()
            Text("Edit mode on")
            Button {
                tabBarManager.actionTabs = []
                dismis()
            } label: {
                Text("Save")
            }
            .buttonStyle(.bordered)
        }
        .navigationBarHidden(true)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.historyViewBackground.ignoresSafeArea())
        .onAppear {
            withAnimation {
                tabBarManager.actionTabs = [.goBack, .delete, .notFavorite, .favorite]
            }
        }
    }
}
