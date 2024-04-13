//
//  HistoryView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 10.04.2024.
//

import SwiftUI

struct HistoryView: View {
    @Binding var actionTabs: [TabBarActionItem]
    var body: some View {
        NavigationStack {
            VStack {
                Text("History")
                    .font(.title)
                    .bold()
                    .padding()
                NavigationLink(destination: HistoryDetailsView(actionTabs: $actionTabs)) {
                    Text("Edit")
                }
                .buttonStyle(.bordered)
            }
            .containerRelativeFrame([.horizontal, .vertical])
            .background(Color.historyViewBackground)
        }
    }
}
