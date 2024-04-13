//
//  HistoryDetailsView.swift
//  CustomTabBarNavigation
//
//  Created by Darius Couti on 13.04.2024.
//

import SwiftUI

struct HistoryDetailsView: View {
    @Binding var actionTabs: [TabBarActionItem]

    var body: some View {
        VStack {
            Text("History")
                .font(.title)
                .bold()
                .padding()
            Text("Edit mode on")
            Button {
                print("click save")
            } label: {
                Text("Save")
            }
            .buttonStyle(.bordered)
        }
        .containerRelativeFrame([.horizontal, .vertical])
        .background(Color.historyViewBackground)
        .onAppear {
            withAnimation {
                actionTabs = [.goBack, .delete, .notFavorite, .favorite]
            }
        }
        .onDisappear {
            withAnimation {
                actionTabs = []
            }
        }
    }
}
