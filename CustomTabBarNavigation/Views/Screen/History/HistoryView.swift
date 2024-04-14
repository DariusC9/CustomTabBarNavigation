//
//  HistoryView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct HistoryView: View {
    @EnvironmentObject private var tabBarManager: TabBarManager

    var body: some View {
        NavigationStack {
            VStack {
                Text("History")
                    .font(.title)
                    .bold()
                    .padding()
                NavigationLink(destination: HistoryDetailsView(actionTabs: $tabBarManager.actionTabs)) {
                    Text("Edit")
                }
                .buttonStyle(.bordered)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.historyViewBackground.ignoresSafeArea())
        }
    }
}
